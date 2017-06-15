import React, { Component } from 'react';
import { Link } from 'react-router-dom';
import by from 'sort-by';
import Hypertopic from 'hypertopic';
import conf from './config.json';

class Corpora extends Component {
  constructor() {
    super();
    this.state = {
      items: []
    };
  }

  render() {
    let items = this._getItems();
      return(
        <div className="Accueil">
          {/* Bases sur lesquelles on récup les info et le nombre d'éléments récupérés
           <h3>{this.props.ids.join(' + ')} ({this.state.items.length})</h3>
           */}
          <div className="Items">
            {
              items
            }
          </div>

        </div>
      );
  }

  componentDidMount() {
    this._timer = setInterval(
      () => this._fetchItems(),
      60000
    );
    var search = document.getElementById('search');
    search.addEventListener('keydown', (e) => {
      if (e.keyCode === 13) this._fetchItems();
    });
  }

  componentDidUpdate(prevProps) {
    if (this.props !== prevProps) this._fetchItems();
  }

  componentWillUnmount() {
    clearInterval(this._timer);
  }

  _getItems() {
    return this.state.items.map(item =>
        <Item key={item.id} name={item.name[0]} thumbnail={item.thumbnail[0]}
          id={item.corpus+'/'+item.id} spatial={item.spatial} />
    );
  }

  _fetchItems() {
    var a = document.getElementById('search');
    var param = a.value.toLowerCase();
    const hypertopic = new Hypertopic(conf.services);
    let uris = this.props.ids.map(id => '/corpus/' + id);
    hypertopic.getView(uris, (data) => {
      let items = [];
      for (let corpus in data) {
        for (let itemId in data[corpus]) {
          if (!['id','name','user'].includes(itemId)) {
            let item = data[corpus][itemId];
            if (!item.name || !item.name.length || !item.thumbnail || !item.thumbnail.length) {
              console.log(itemId, "has no name or thumbnail!", item);
            } else {
              if (param !== ""){
                if (typeof item.spatial === "undefined"){
                  if (item.name[0].toLowerCase().indexOf(param) >= 0){
                    item.id = itemId;
                    item.corpus = corpus;
                    items.push(item);
                  }
                }
                else{
                  if ((item.name[0].toLowerCase().indexOf(param) >= 0) || (item.spatial[0].toLowerCase().indexOf(param) >= 0)) {
                    item.id = itemId;
                    item.corpus = corpus;
                    items.push(item);
                  }
                }               
              }
              else {
                item.id = itemId;
                item.corpus = corpus;
                items.push(item);
              }
            }
          }
        }
      }
      this.setState({items:items.sort(by('name'))});
    });
  }
}

function Item(props) {
  let uri = '/item/' + props.id;
  return (
    <div className="Item">
      <Link to={uri}>
        <img src={props.thumbnail} alt={props.name} />
      </Link>
      <div className="Info">
        <ul>
          <li className="Name">{props.name}</li>
          <li>{props.spatial}</li>
        </ul>
      </div>
    </div>
  );
}

export default Corpora;

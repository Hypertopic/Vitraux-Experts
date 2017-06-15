import React, { Component } from 'react';
import Hypertopic from 'hypertopic';
import groupBy from 'json-groupby';
import conf from './config.json';
import Header from './Header';
import CommentBox from './CommentSection';

import './App.css';

class Item extends Component {
  constructor() {
    super();
    this.state = {
      topic: []
    }
  }

  render() {
    let attributes = this._getAttributes();
    let viewpoints = this._getViewpoints();
    return (
      <div className="App">
        <div className="Nav">
          <div className="Title">
            <h1><a href="/" >Accueil</a></h1>
          </div>
          <div className="Image">
            <img src="../../user_icone.png" alt="icone utilisateur"/>
          </div>
        </div>
        <div className="App-content">
          <p className="ListReturn"><a href="/">Retour à la liste</a></p>
          <div className="Description">
            <div className="DescriptionModality">
              <h3>Attributs du document</h3>
              <div className="Attributes">
                {attributes}
              </div>
            </div>
            <div className="Viewpoints">
              {viewpoints}
            </div>
          </div>
          <div className="Subject">
            <img src={this.state.resource} alt="resource" />
            <h2>{this.state.name}</h2>
          </div>
          <div className="Disclaimer">
            <p> Le site "Corpus vitroeum paticipatif" a pour objectif de permettre à tous les connaisseurs de vitraux d'échanger sur la
            base de données des vitraux de Troyes. La signification de certains vitraux reste pour l'instant inconnue, d'autres vitraux
            peuvent manquer d'informations ou de références. Vos interventions sont donc les bienvenues.</p>
          </div>
          <div className="Sources">
            <p>Sources : <a href="#">etude.pdf</a></p>
          </div>
          <div>
            <CommentBox item={this.props.match.params}/>
          </div>
        </div>
      </div>
    );
  }

  _getAttributes() {
    return Object.entries(this.state)
      .filter( x => !["topic", "resource","thumbnail"].includes(x[0]) )
      .map( x =>
        <div className="Attribute" key={x[0]}>
          <div className="Key">{x[0]}</div>
          <div className="Value">{x[1][0]}</div>
        </div>
      );
  }

  _getViewpoints() {
    return Object.entries(this.state.topic).map(v =>
      <Viewpoint key={v[0]} id={v[0]} topics={v[1]} />
    );
  }

  componentDidMount() {
    this._fetchItem();
    this._timer = setInterval(
      () => this._fetchItem(),
      15000
    );
  }

  componentWillUnmount() {
    clearInterval(this._timer);
  }

  _fetchItem() {
    let uri = this.props.match.url;
    let params = this.props.match.params;
    let hypertopic = new Hypertopic(conf.services);
    hypertopic.getView(uri, (data) => {
      let item = data[params.corpus][params.item];
      item.topic = (item.topic) ? groupBy(item.topic, ['viewpoint']) : [];
      this.setState(item);
    });

  }
}

class Viewpoint extends Component {
  constructor(props) {
    super();
    this.state = {};
  }

  render() {
    let paths = this._getPaths();
    return (
      <div className="DescriptionModality">
        <h3>{this.state.name}</h3>
        <div className="Topics">
          {paths}
        </div>
      </div>
    );
  }

  _getPaths() {
    if (!this.state.topics) return [];
    //console.log(JSON.stringify(this.state.topics));
    return this.props.topics.map( t =>
      <TopicPath key={t.id} id={t.id} topics={this.state.topics} />
    );
  }

  componentDidMount() {
    this._fetchViewpoint();
  }

  _fetchViewpoint() {
    const hypertopic = new Hypertopic(conf.services);
    let uri = '/viewpoint/' + this.props.id;
    hypertopic.getView(uri, (data) => {
      let viewpoint = data[this.props.id];
      let name = viewpoint.name;
      let topics = viewpoint;
      delete topics.user;
      delete topics.name;
      delete topics.upper;
      // console.log(JSON.stringify(topics));
      this.setState({name, topics});

    });
  }
}

class TopicPath extends Component {
  constructor() {
    super();
    this.state = {
      path: []
    };
  }

  render() {
    let topics = this._getTopics();
    return (
      <div className="TopicPath">
        {topics}
      </div>
    );
  }

  componentDidMount() {
    let topic = this._getTopic(this.props.id);
    let path = [topic];
    while (topic.broader) {
      topic = this._getTopic(topic.broader[0].id);
      path.unshift(topic);
    }
    this.setState({path});
  }

  _getTopic(id) {
    let topic = this.props.topics[id];
    topic.id = id;
    return topic;
  }

  _getTopics() {
    return this.state.path.map( t => {
      let name = (t.name)? t.name : 'Sans nom';
      return (
        <div key={t.id} className="Topic">{name}</div>
      );
    });
  }

}

export default Item;

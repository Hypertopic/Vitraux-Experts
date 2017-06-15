import React, { Component } from 'react';
import by from 'sort-by';
import Hypertopic from 'hypertopic';
import conf from './config.json';
import Viewpoint from './Viewpoint';
import Corpora from './Corpora';
import SearchBar from './SearchBar.js';

import './App.css';

class Portfolio extends Component {
  constructor() {
    super();
    this.state = {
      viewpoint: [],
      corpus: []
    }
  }

  render() {
    const corpora = this._getCorpora();
    return (
      <div className="App">
        <div className="Nav">
          <div className="Title">
            <h1><a href="/" >Accueil</a></h1>
          </div>
          <SearchBar />
          <div className="Image">
            <img src="./user_icone.png" alt="icone utilisateur"/>
          </div>
        </div>
        <div className="App-content">
          {corpora}
        </div>
      </div>
    );
  }

  componentDidMount() {
    this._fetchBookmarks();
  }

  _fetchBookmarks() {
    const hypertopic = new Hypertopic(conf.services);
    hypertopic.getView(`/user/${conf.user}`, (data) => {
      this.setState(data[conf.user]);
    });
  }

  _getViewpoints() {
    return this.state.viewpoint.sort(by('name')).map(v =>
      <Viewpoint key={v.id} id={v.id} name={v.name} />
    );
  }

  _getCorpora() {
    let ids = this.state.corpus.map(c => c.id);
    return (
      <Corpora ids={ids} />
    );
  }
}

export default Portfolio;

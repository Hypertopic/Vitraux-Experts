import React, { Component } from 'react';

class SearchBar extends Component {

  render(){   
    return (        
      <div className="SearchBar">
        <input id='search' type="text" placeholder="Rechercher ..." onChange={this._fetchItems}/> 
      </div>
    )    
  }
}

export default SearchBar;

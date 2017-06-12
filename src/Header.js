import React, { Component } from 'react';

class Header extends Component {

  render(){   
    return (        
      <div className="Nav">
        <div className="Title">
          <h1><a href="/" >Accueil</a></h1>
        </div>
        <div className="Image">
          <img src={this.props.link} alt="icone utilisateur"/>
        </div>
      </div>
    )    
  }
}

export default Header;

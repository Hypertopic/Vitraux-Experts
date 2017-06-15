import React, { Component } from 'react';

class Reaction extends Component {
  constructor(props) {
    super(props);
    this.state = {
      disabled : false,
      id : this.props.commentId,
      reactionState : 'Donner votre avis : '
    };

    this.handleClick = this.handleClick.bind(this);
  }

  handleClick(e) {

    let url = 'http://localhost:3001/api/corpus/comment/' + e.target.value;

    fetch(url,
      { method: "PUT",
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          id : this.state.id
        })
      })
      .then(function(res){ console.log(res)})
      .catch(function(res){ console.log(res)});

      this.setState({disabled : true,reactionState : 'Avis pris en compte! '});
  }

  render() {
    return(
      <div className="Reaction">
        {this.state.reactionState}
        <button disabled={this.state.disabled} onClick={(e) => this.handleClick(e)} value='like'>Like : {this.props.likes}</button>
        <button disabled={this.state.disabled} onClick={(e) => this.handleClick(e)} value='dislike'>Dislike : {this.props.dislikes}</button>
      </div>
    );
  }
}

export default Reaction;

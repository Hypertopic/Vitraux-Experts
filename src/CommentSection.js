import React, { Component } from 'react';

//Contient toute la partie commentaires
class CommentBox extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      item: this.props.item.item,
      corpus: this.props.item.corpus,
      data:[]
    };

    this.handleCommentSubmit = this.handleCommentSubmit.bind(this);
    this.loadCommentsFromServer = this.loadCommentsFromServer.bind(this);
    this.componentDidMount = this.componentDidMount.bind(this);

  }

  doFetch() {

    let url = 'http://localhost:3001/api/corpus/'+ this.state.corpus +'/'+this.state.item+'/comment';

    return fetch(url,{method:'GET'})
    .then((resp) => resp.json())
    .then(function(data) {
      return data;
    })
    .catch(function(error) {
      console.log(error);
    })
  }

  loadCommentsFromServer() {
    this.doFetch().then(function(response){
        if(response){
          this.setState({
              data: response
          });
        }
        ;
    }.bind(this))
  }

  handleCommentSubmit(comment) {
    let data = {
      id_corpus : this.state.corpus,
      id_item : this.state.item,
      user : comment.author,
      text : comment.comment,
    };

    let url = 'http://localhost:3001/api/corpus/comment';

    console.log(data);

    fetch(url,
      {
        method: "POST",
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify(data)
      })
      .then(function(res){ console.log(res) })
      .catch(function(res){ console.log(res) })

    }

    componentDidMount(){
      this.loadCommentsFromServer();
      setInterval(this.loadCommentsFromServer, 2000);
    }

    render(){
      return (
        <div className="commentBox">
        <h3>Point de vue des experts :</h3>
        <CommentList data={this.state.data} />
        <CommentForm onCommentSubmit={this.handleCommentSubmit}/>
        </div>
      )
    }
  }

  //Formulaire de commentaires
  class CommentForm extends React.Component{

    constructor(props) {
      super(props);

      this.handleSubmit = this.handleSubmit.bind(this);
    }

    handleSubmit(e) {
      e.preventDefault();

      var author = this.refs.author.value.trim();
      var comment = this.refs.comment.value.trim();

      if(!author || !comment) {
        return;
      }

      this.refs.author.value = '';
      this.refs.comment.value = '';

      this.props.onCommentSubmit({author: author, comment: comment});
    }

    render() {
      return(
        <form className="CommentForm" onSubmit={this.handleSubmit}>
          <div className="form-row">
            <input className="Input" type="text" ref='author' />
          </div>
          <div className="form-row">
            <textarea className="Input" type="text" ref='comment' />
          </div>
          <input type="submit" value="Valider" />
        </form>
      );
    }

  }

  class CommentList extends React.Component{
    render() {
        var commentNodes = this.props.data.map(function (comment) {
          return (
            <Comment key={comment.id} author={comment.user} text={comment.text} date={comment.date}/>
          );
        });
        return (
          <div className="CommentList">
            {commentNodes}
          </div>
        );
    }
  }

  class Comment extends React.Component{
    render() {
      return (
        <div className="Comment">
          <div className='Author'>
            {this.props.author}
          </div>
          <div className='CommentText'>
            <div className='CommentHeader'>
              Posté le {this.props.date}
            </div>
            <div className='CommentContent'>
              <p>{this.props.text}</p>
            </div>
          </div>
        </div>
      );
    }
  }


  export default CommentBox;

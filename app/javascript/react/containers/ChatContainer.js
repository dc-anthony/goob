import React, { Component } from "react";
import Message from "../components/Message";
import TextFieldWithSubmit from "../components/TextFieldWithSubmit";

class ChatContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      messages: []
    };
  };

  fetchCall = () => {
    fetch(`/api/v1/messages`)
    .then(response => {
      if (response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status } (${response.statusText})`,
        error = new Error(errorMessage);
        throw(error);
        }
      })
    .then(response => response.json())
    .then(body => {
      this.setState({messages: body})
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`))
  }

  componentDidMount() {
    console.log("Component Mounted")
    this.fetchCall();
    this.interval = setInterval(this.fetchCall, 1000);
  }

  componentWillUnmount() {
    clearInterval(this.interval);
  }


// App.ChatChannel = App.cable.subscriptions.create (
//   {
//     channel: "ChatChannel"
//     // id: this.props.params.id
//   },
//   {
//     connected: () => console.log("ChatChannel connected"),
//     disconnected: () => console.log("ChatChannel disconnected"),
//     received: data => {
//       this.setState();
//       console.log(data)
//     }
//   }
// );


  render() {
    let messages = this.state.messages.map(message => {
      return(
        <Message
          key={message.id}
          id={message.id}
          messageAuthor={message.discord_message_author}
          avatarUrl={message.discord_message_author_avatarUrl}
          discordTimestamp={message.discord_message_timestamp}
          messageContent={message.discord_message_content}
        />
      )
    })

    return(
      <div className="app-component">
        <h1>goob</h1>
        <div className="main-subtitle">a discord chat bot embed</div>
        <div className="example">EXAMPLE</div>
        <div className="example-chat-embed-container">
          <div className="example-chat-embed-box">
            {messages}
          </div>
        </div>
      </div>
    );
  };
};

export default ChatContainer;

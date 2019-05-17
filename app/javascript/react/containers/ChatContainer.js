import React, { Component } from "react";
import Message from "../components/Message";
import TextFieldWithSubmit from "../components/TextFieldWithSubmit";

class ChatContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      messages: [],
      messageAuthor: { username: "dc"},
      avatarUrl: "https://images2.imgbox.com/12/49/xdBpmsag_o.jpg",
      discordTimestamp: "Today at 8:39 AM",
      messageContent: "lakdfhladshfldshaf"
    };
  };

  componentDidMount() {
    console.log("Component Mounted")
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
    .catch(error => console.error(`Error in fetch: ${error.message}`));


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
  }

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
            <div className="example-chat-message-box">
              <img src="https://images2.imgbox.com/68/de/tan8yfZQ_o.jpg" />
              <div className="example-chat-message-info two">
                <span className="message-info-username">goob</span>
                <span className="message-info-time">Today at 8:38 AM</span>
              </div>
              <div className="example-chat-message-content">... are you okay?</div>
            </div>
            <div className="example-chat-message-box">
              <img src="https://images2.imgbox.com/12/49/xdBpmsag_o.jpg" />
              <div className="example-chat-message-info">
                <span className="message-info-username">dc</span>
                <span className="message-info-time">Today at 8:39 AM</span>
              </div>
              <div className="example-chat-message-content">nO, CHERYL. I AM NOT.</div>
            </div>
            <div className="example-chat-message-box">
              <img src="https://i.gyazo.com/a5431462b8835880d1d344a574e2480c.png" />
              <div className="example-chat-message-info three">
                <span className="message-info-username">guest user</span>
                <span className="message-info-time">Today at 8:33 AM</span>
              </div>
              <div className="example-chat-message-content">Uhhh bye.</div>
            </div>
            <div className="example-chat-message-box">
              <div className="example-chat-message-info three">
                <span className="message-info-username">guest user </span> has left the chat
                <span className="message-info-time">Today at 8:33 AM</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  };
};

export default ChatContainer;

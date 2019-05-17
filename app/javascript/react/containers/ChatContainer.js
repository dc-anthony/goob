import React, { Component } from "react";
import Message from "../components/Message";
import TextFieldWithSubmit from "../components/TextFieldWithSubmit";

class ChatContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      messageAuthor: { username: "dc"},
      avatarUrl: "https://images2.imgbox.com/12/49/xdBpmsag_o.jpg",
      discordTimestamp: "Today at 8:39 AM",
      messageContent: "lakdfhladshfldshaf"
    };
  };

  componentDidMount() {
    console.log("Component Mounted")
    App.ChatChannel = App.cable.subscriptions.create (
      {
        channel: "ChatChannel"
        // id: this.props.params.id
      },
      {
        connected: () => console.log("ChatChannel connected"),
        disconnected: () => console.log("ChatChannel disconnected"),
        received: data => {
          this.setState();
          console.log(data)
        }
      }
    );
  }

  render() {

    return(
      <div className="app-component">
        <h1>goob</h1>
        <div className="main-subtitle">a discord chat bot embed</div>
        <div className="example">EXAMPLE</div>
        <div className="example-chat-embed-container">
          <div className="example-chat-embed-box">
            <Message
              messageAuthor= {this.state.messageAuthor}
              avatarUrl= {this.state.avatarUrl}
              discordTimestamp= {this.state.discordTimestamp}
              messageContent= {this.state.messageContent}
            />
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

import React from 'react';

export const App = (props) => {
  return (
    <div className="app-component">
      <h1>goob</h1>
      <div className="main-subtitle">a discord chat bot embed</div>
      <div className="example">EXAMPLE</div>
      <div className="example-chat-embed-container">
        <div className="example-chat-embed-box">
          <div className="example-chat-message-box">
            <img src="https://images2.imgbox.com/12/49/xdBpmsag_o.jpg" />
            <div className="example-chat-message-info">
              <span className="message-info-username">dc</span>
              <span className="message-info-time">Today at 8:29 AM</span>
            </div>
            <div className="example-chat-message-content">dsfksadjflsadf</div>
          </div>
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

export default App;

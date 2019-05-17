import React from "react";

const Message = props => {

  return(
    <div className="example-chat-message-box">
      <img src="{props.avatarUrl}" />
      <div className="example-chat-message-info">
        <span className="message-info-username">{props.messageAuthor.username}</span>
        <span className="message-info-time">{props.discordTimestamp}</span>
      </div>
      <div className="example-chat-message-content">{props.messageContent}</div>
    </div>
  );
};

export default Message;

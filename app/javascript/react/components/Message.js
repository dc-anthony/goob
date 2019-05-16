import React from "react";

const Message = props => {

  return(
    <div className="example-chat-message-box">
      <img src="https://images2.imgbox.com/12/49/xdBpmsag_o.jpg" />
      <div className="example-chat-message-info">
        <span className="message-info-username">dc</span>
        <span className="message-info-time">Today at 8:29 AM</span>
      </div>
      <div className="example-chat-message-content">dsfksadjflsadf</div>
    </div>
  );
};

export default Message;

class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat_#{params[:id]}"
    # stream_from "chat_channel"
    chat = Channel.find(params[:id])
    ActionCable.server.broadcast("channel_#{{params[:id]}}", )
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def receive(data)
    puts data
    # Currently, we dont actually use this code that much. But you would have to set up these models if you want to record the conversations in your chat.
    chat = Chat.find_or_create_by(id: params[:id])
    new_message = Message.create(body: data["message"], user: User.find(data["user"]["user_id"]))
    chat.messages << new_message

    chat_key = chat.id

    chat_json = {
      "chat_key": chat_key,
      "message": new_message.body,
      "messageId": new_message.id,
      "user": data["user"]
    }

    ActionCable.server.broadcast("chat_#{params[:id]}", chat_json)
  end

  def create_messages(message)
  end
end


# chat_key = "#{Time.now.to_datetime.strftime('%Q')}-#{current_user.id}"

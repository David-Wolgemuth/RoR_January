class Message
  #sender, receiver, text, timestamp
  #display
def timestamp
  @timestamp = Time.now
end
  def set_sender_receiver sender,receiver
    @sender = sender
    @receiver = receiver

  end

def set_title_and_text title, text
    @title = title
    @text = text
  end

  def sender
    return @sender
  end

  def receiver
    return @receiver
  end

def title
    return @title
  end

  def text
    return @text
  end

  def display
    display = @text,@receiver,@sender,@title,@timestamp
     return display.to_s
  end

end
m = Message.new
m.set_title_and_text "Awesome title", "The Awesome text"
m.set_sender_receiver "Jon", "Dasha"
# puts m.title
# puts m.text
# puts m.sender
# puts m.receiver
puts m.timestamp
puts m.display

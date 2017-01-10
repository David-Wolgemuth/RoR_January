class Message
  # sender, receiver, text, timestamp, title
  def initialize sender
    # Put things in here that you want to happen automatically, like timestamps
    @created_at = Time.now
    @sender = sender
  end
  def set_title_and_text title, text, receiver
    @title = title
    @text = text
    @receiver = receiver
  end
  # These are the 'getters', which get the attribute and turn it into a method that can be called
  def title
    return @title
  end
  def text
    return @text
  end
  def sender
    return @sender
  end
  def receiver
    return @receiver
  end
  def created_at
    return @created_at
  end
  # def return_all
  #   puts @sender
  #   puts @receiver
  #   puts @title
  #   puts @text
  #   puts @created_at
  # end

end



m = Message.new("Chris")
m.set_title_and_text "The Awesome", "The even awesomer text.", "Abbey"
# puts m.return_all
puts "The Title: #{m.title}"
puts "The Text: #{m.text}"
puts "The Receiver: #{m.receiver}"
puts "The Sender: #{m.sender}"
puts m.created_at

class Message
  #Sender, Receiver, Title, Text, and TimeStamp
  #Display method

  def initialize
    @created_at = Time.now.getutc
  end

  def set_title_and_text title, text , sender, receiver
    @title = title
    @text = text
    @updated_at = Time.now.getutc + 10
    @sender = sender
    @receiver = receiver
  end

  def title
    return @title,  @text, @sender, @receiver, @updated_at
  end
  def created_at
    return @created_at
  end
end

m = Message.new
puts m.created_at

m.set_title_and_text "The Awesome Title", "The Awesome Text", "ann", "alex"

puts m.title
# puts "Sender: #{m.sender}; Receiver: #{m.receiver}"
#
# puts "Title: #{m.title}"
# puts "Text: #{m.text}"
# puts m.updated_at

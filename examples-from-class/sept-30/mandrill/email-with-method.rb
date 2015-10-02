# load the mandrill gem
require "mandrill"

# this defines the send_email method
def send_email(message_body)
  # create a new mandrill object
  mandrill = Mandrill::API.new

  # set the message params
  # pay special attention to the keys
  message = {
   :subject => "Hello from the Mandrill API",
   :from_name => "Mandrill Test",
   :text => message_body,
   :to => [{:email=> "orlando@nycda.com", :name=> "Orlando Caraballo"}],
   :html => "<html><h1>#{message_body}</h1></html>",
   :from_email => "fromaddress@somedomain.com"
  }

  # this calls the send method of the messages object within the mandrill object
  #   (class inception -> its defined internally as a class within a class)
  sending = mandrill.messages.send message

  # return the sending object, in this case its a Hash object
  #   Hash object documentation -> http://ruby-doc.org/core-2.2.2/Hash.html
  # this hash will give you information on if any errors that may occur, if it sent, 
  #   as well as other relevant information
  puts sending
end

# this invokes the send_email method we defined above
send_email "this is the message body that should appear within the email"
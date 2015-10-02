# load the mandrill gem
require "mandrill"

# create a new mandrill object
mandrill = Mandrill::API.new

# set the message params
# pay special attention to the keys
message = {
 :subject => "Hello from the Mandrill API",
 :from_name => "Mandrill Test",
 :text => "Hi message, how are you?",
 :to => [{:email=> "orlando@nycda.com", :name=> "Orlando Caraballo"}],
 :html => "<html><h1>Hi <strong>message</strong>, how are you?</h1></html>",
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
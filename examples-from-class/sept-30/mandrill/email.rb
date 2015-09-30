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

sending = mandrill.messages.send message

puts sending
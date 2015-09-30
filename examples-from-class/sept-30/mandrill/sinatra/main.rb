# load the mandrill gem
require "mandrill"

# load the sinatra gem
require "sinatra"

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

  sending = mandrill.messages.send message

  puts sending
end

get "/contact-us" do
  erb :form
end

post "/contact-us-post" do
  puts "sending email now"
  send_email params[:message_body]
end
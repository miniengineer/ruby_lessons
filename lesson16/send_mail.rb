require "pony"
require "io/console"

my_mail = "minira92@mail.ru"

puts "To send an email please enter your email's password:"
password = STDIN.noecho(&:gets).chomp

puts "Please enter receiver's email address:"
send_to = STDIN.gets.chomp

puts "Please enter body of the email:"
body = STDIN.gets.chomp

Pony.mail(
  {
    :subject => "hello from Minira!",
    :body => body,
    :to => send_to,
    :from => my_mail,

    via: :smtp,
    :via_options => {
      :address => 'smtp.mail.ru',
      :port => '465',
      :tls => true,
      :user_name => my_mail,
      :password => password,
      :authentication => :plain
    }
  }
)

puts "Email sent successfully!"

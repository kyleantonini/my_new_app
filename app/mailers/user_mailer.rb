class UserMailer < ApplicationMailer
  default from: "kyleantonini@gmail.com"

  def contact_form(email, name, message)
  	@message = message
  	mail(:from => email,
  		:to =>  'kyleantonini@gmail.com',
  	    :subject => "A new contact form message from #{name}")
  end

  def welcome(user)
  	@appname = "Kyle's App"
  	mail( :to => user.email,
  		  :subject => "Welcome to #{@appname}!")
  end

end

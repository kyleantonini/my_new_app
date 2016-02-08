# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def contact_form
  	UserMailer.contact_form("kyleantonini@nini.nini", "Kyle", "Hello World!")
  end
end

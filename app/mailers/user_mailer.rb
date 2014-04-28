class UserMailer < ActionMailer::Base

default from: "stefan.maier09@gmail.com"
  def registration_confirmation(user)
    @user = user
    attachments["superman.jpg"] = File.read("#{Rails.root}/public/images/superman.jpg")
    mail(to: "#{user.name} <#{user.email}>", subject: "Registered at Berghain Timetable")
  end

  def update_confirmation(user)
    @user = user
    mail(to: user.email, subject: "Updated Account at Berghain Timetable")
    

  end
end

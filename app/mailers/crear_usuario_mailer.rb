class CrearUsuarioMailer < ApplicationMailer
    default from: "jacdigital2018@gmail.com"
    def notify_new_user(user)
        @user = user
        mail(to: @user.email, subject: 'Se ha creado un nuevo usuario')
    end   
end

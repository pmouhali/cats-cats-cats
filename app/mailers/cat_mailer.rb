class CatMailer < ApplicationMailer

  def contact(user)
    mail(from: "hnr.berger@gmail.com", to: "#{user}", subject: "Bienvenue chez CatWorld",
                        delivery_method_options: {
                            api_key: "#{Rails.application.credentials.API_Public_Key}",
                            secret_key: "#{Rails.application.credentials.API_Secret_Key}" }
                          )
  end

end

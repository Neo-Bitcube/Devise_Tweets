class CallbacksController < Devise::OmniauthCallbacksController
  def twitter
    @user = User.from_omniauth(request.env["omniauth.auth"])
    if @user.persisted?
       sign_in_and_redirect @user
    end
  end
end

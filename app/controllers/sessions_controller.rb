class SessionsController < ApplicationController
  def new
    # render�i kirjautumissivun
  end

  def create
    user = User.find_by username: params[:username]
    if user.disabled?
      redirect_to :back, notice: "Contact admin, plx"
    else
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to user_path(user), notice: "Welcome back!"
      else
        redirect_to :back, notice: "Username and/or password mismatch"
      end
    end
  end

  def create_oauth
     byebug
  end

  def destroy
    # nollataan sessio
    session[:user_id] = nil
    # uudelleenohjataan sovellus p��sivulle
    redirect_to :root
  end
end

class SessionsController < ApplicationController
  protect_from_forgery with: :null_session



  def new
    render :login
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
  end

end

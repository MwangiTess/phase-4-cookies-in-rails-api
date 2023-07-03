class SessionsController < ApplicationController
  
  def index
    session[:session_hello] ||= "New World"
    cookies[:cookies_hello] ||= "Old World"
    render json: { session: session, cookies: cookies.to_hash }
  end

end

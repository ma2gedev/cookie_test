class CookieController < ApplicationController
  def index
    if cookies[:value] == '+'
      render plain: 'plus', status: :ok
    else
      render plain: 'not plus', status: :not_found
    end
  end

  def add_cookie
    cookies[:value] = params[:value]
    render plain: 'added' + params[:value]
  end
end

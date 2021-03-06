class SessionsController < ApplicationController
  include SessionsHelper

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      params[:session][:remember_me] == '1' ? remember_user(user) : forget_user(user)
      flash= {:info => "欢迎回来: #{user.name} :)"}
    else
      flash= {:danger => '账号或密码错误'}
      redirect_to sessions_login_path
    end
    if student_logged_in?
      redirect_to courses_url, :flash => flash
    elsif teacher_logged_in?
      redirect_to courses_url, :flash => flash
    else admin_logged_in?
      redirect_to rails_admin_path
    end
  end

  def new
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end

end

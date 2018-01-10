class EmailsController < ApplicationController
  # before_action :index
  # def index
  #   redirect_to :action => create
  # end
  def index
    message=Emails.index
    message.deliver
  end

  def create

  end

end

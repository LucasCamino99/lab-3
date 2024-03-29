class ContactController < ApplicationController
  def index
  end
  def create
    if params[:name].present? && params[:email].present? && params[:message].present?
      flash[:notice] = 'Thank you for your message, we will be in touch soon.'
      redirect_to contact_path
    else
      flash[:alert] = 'Please fill in all fields.'
      redirect_to contact_path
    end
  end
end

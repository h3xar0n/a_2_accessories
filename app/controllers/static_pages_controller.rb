class StaticPagesController < ApplicationController
  def landing_page
    @products = Product.all
  end
  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    ActionMailer::Base.mail(:from => @email,
      :to => 'aron.eidelman@gmail.com',
      :subject => "A2 Accessories form from #{@name}",
      :body => @message).deliver_now
  end
end

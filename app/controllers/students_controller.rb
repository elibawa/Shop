class StudentsController < ApplicationController
  def index

  	@student = User.all

  end

  def new
  	@send = User.new
  end

  def create

  	@send = User.new(params[:user])


  	if @send.save

  		redirect_to(:action => 'index')
  	else
  		render('new')
  	end


  end
end

class AuthorsController < ApplicationController
  def index
    session[:counter] = 0 if session[:counter].nil?
    session[:counter] += 1
    
    str = "The test parameter: <%= params[:test] %><br />"
    str += "session[:counter]: <%= session[:counter] %><br />"
      flash.each do |name, msg|
        str += "<b>[FLASH]</b> <b>Name</b>: #{name} <b>Msg</b>: #{msg}<br/>"
      end

    if params[:flashy]
      flash[:alert] = params[:flashy]
    end

    str = "<br />And now for some models:<br /><br />"

    @authors = Author.all
    @authors.each do |author|
      str += "<b>[AUTHOR]</b> <b>name</b>: #{author.name} <b>email</b>: #{author.email} <br />"
    end

    render :inline => str
  end

  def show
    @author = Author.find(params[:id])
    str = "This is the profile of an author:<br /><br />"
    str += "<b>ID</b>: #{@author._id}"
    str += "<b>Name</b>: #{@author.name}"
    str += "<b>Email</b>: #{@author.email}"

    render :inline => str
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

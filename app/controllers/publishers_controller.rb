class PublishersController < ApplicationController
  def show
    @publisher = Publisher.find(params[:id])
  end

  def index
    @publishers = Publisher.all

    respond_to do |format|
      format.html
      format.xml { render :xml => @publishers }
    end
  end

  def new
    @publisher = Publisher.new
  end

  def create
    @publisher = Publisher.new(params[:publisher])
    if @publisher.save
      redirect_to @publisher
    else
      render 'new'
    end
  end
end

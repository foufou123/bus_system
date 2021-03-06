class LinesController < ApplicationController

 def index
    @lines = Line.all
  end

  def new
    @line = Line.new
  end

  def create
    @line = Line.new(params[:line])
    if @line.save
      flash[:notice] = "line created."
      redirect_to lines_path
    else
      render 'new'
    end
  end

  def show
    @line = Line.find(params[:id])
  end

  def edit
   @line = Line.find(params[:id])
  end

  def update
    @line = Line.find(params[:id])
    if @line.update(params[:line])
     flash[:notice] = "line updated"
     redirect_to lines_path
    else
     render 'edit'
    end
  end

  def destroy
    @line = Line.find(params[:id])
    @line.destroy
    redirect_to lines_path
  end


end

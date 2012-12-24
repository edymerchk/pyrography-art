class WorksController < ApplicationController


  before_filter :require_login, :only => :new
   def new
  	@work = Work.new
   end

   def index
  	@works = Work.all
  end

  def create
    @work = Work.new(params[:work])
    @work.date = DateTime.now   
    if @work.save
      flash[:success] = "Guardado correctamente"
      redirect_to @work
      # Handle a successful save.
    else
      render 'new'
    end
  end

  def show
  	@work = Work.find(params[:id])
    @works_random = Work.random
  end

  def destroy
    Work.find(params[:id]).destroy
    flash[:success] = "Trabajo Destruido!"
    redirect_to works_path
  end

end

class WorksController < ApplicationController
   def new
  	@work = Work.new
   end

   def index
  	@works = Work.all
  end
end

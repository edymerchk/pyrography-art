class Work < ActiveRecord::Base
  attr_accessible :date, :description, :name

  def new
  	@work = Work.new
   end

   def index
  	@works = Work.all
  end
end

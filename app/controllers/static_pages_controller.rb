class StaticPagesController < ApplicationController

  def admin
  end

  def index
  	@works_recent = Work.recent  	
  end

  def retrato
  	
  end
end

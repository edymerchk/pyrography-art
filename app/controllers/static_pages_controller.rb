class StaticPagesController < ApplicationController
  def home
  end

  def contact
  end

  def index
  	@works_recent = Work.recent
  	
  end
end

module ApplicationHelper

	def li(show, path)
		content_tag :li do 
			link_to show, path
		end		
	end
end

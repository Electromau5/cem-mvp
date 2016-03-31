module ApplicationHelper
	def show_seller_bg
    	"background:transparent url(#{@seller.image2.url(:large)}) no-repeat fixed left top;"
  	end
end

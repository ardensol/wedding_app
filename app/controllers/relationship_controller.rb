class RelationshipsController < ApplicationController
		def create
		@vendor = Vendor.find(params[:relationship][:quote_id])
			current_vendor.bid!(@quote)
			redirect_to @vendor
		end
end
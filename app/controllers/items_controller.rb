class ItemsController < ApplicationController
    def index
        items = Item.all
        render json: items, include: :user, except: [:created_at, :updated_at] 
    end

end

class ItemsController < ApplicationController
    def new
        @item = Item.new
        @categories = Category.all
    end

    def create
        # redirect_to items_path
        # item = Item.new(item_params)
        # render plain: item.inspect
        Item.create(item_params)
    end

    private
    def item_params
        params.require(:item).permit(:name, :quantity, :cost, :category_id)
    end
end

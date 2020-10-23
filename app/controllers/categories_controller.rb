class CategoriesController < ApplicationController
    def new
        @category = Category.new
        @users = User.all
    end

    def index
      @categories = Category.all
    end

    def create
      @category = Category.create!(category_params)

      redirect_to categories_path

        # respond_to do |format|
        #     if @category.save
        #     format.html { redirect_to @category, notice: 'Category was successfully created.' }
        #     format.json { render :show, status: :created, location: @category }
        #     else
        #     format.html { render :new }
        #     format.json { render json: @category.errors, status: :unprocessable_entity }
        #     end
        # end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def category_params
      params.require(:category).permit(:name, :user_id)
    end
end

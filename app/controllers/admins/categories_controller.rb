class Admins::CategoriesController < ApplicationController
  before_action :load_categories, only: :index  
  before_action :load_category, only: [:update, :destroy, :edit]  

  layout "admin"

  def index
    
  end

  def new
    @category = Category.new
  end

  def edit
    
  end

  def update
    @category.update_attributes category_params
    if @category.save
      flash[:success] = t("messages.update_success")
      redirect_to admins_categories_path
    else
      flash[:danger] = t("messages.update_failed")
      redirect_to root_path
    end
  end

  def destroy
    return unless @category.present?
    @category.try :destroy
    redirect_to admins_categories_path
  end

  def create
    @category = Category.new category_params
    if @category.save
      redirect_to admins_categories_path
    else
      redirect_to root_path
    end
  end

  private
  def load_categories
    @categories = Category.all
  end

  def category_params
    params.require(:category).permit Category::CATEGORY_PARAMS
  end

  def load_category
    @category = Category.find_by id: [params[:id]]
  end
end

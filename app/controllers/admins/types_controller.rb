class Admins::TypesController < ApplicationController
  before_action :load_types, only: :index  
  before_action :load_type, only: [:update, :destroy, :edit]  

  layout "admin"

  def index
    
  end

  def new
    @type = Type.new
  end

  def edit
    
  end

  def update
    @type.update_attributes type_params
    if @type.save
      flash[:success] = t("messages.update_success")
      redirect_to admins_categories_path
    else
      flash[:danger] = t("messages.update_failed")
      redirect_to root_path
    end
  end

  def destroy
    return unless @type.present?
    @type.try :destroy
    redirect_to admins_categories_path
  end

  def create
    @type = Type.new type_params
    if @type.save
      redirect_to admins_categories_path
    else
      redirect_to root_path
    end
  end

  private
  def load_types
    @types = Type.all
  end

  def type_params
    params.require(:type).permit Type::TYPE_PARAMS
  end

  def load_type
    @type = Type.find_by id: [params[:id]]
  end
end

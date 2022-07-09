class CategoryServicesController < ApplicationController
  before_action :set_category_service, only: %i[ show edit update destroy ]

  def index
    @category_services = CategoryService.all
  end

  def show
  end

  def new
    @category_service = CategoryService.new
  end

  def edit
  end

  def create
    @category_service = CategoryService.new(category_service_params)

    respond_to do |format|
      if @category_service.save
        format.html { redirect_to category_service_url(@category_service), notice: "Category service was successfully created." }
        format.json { render :show, status: :created, location: @category_service }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @category_service.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @category_service.update(category_service_params)
        format.html { redirect_to category_service_url(@category_service), notice: "Category service was successfully updated." }
        format.json { render :show, status: :ok, location: @category_service }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @category_service.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @category_service.destroy

    respond_to do |format|
      format.html { redirect_to category_services_url, notice: "Category service was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_category_service
      @category_service = CategoryService.find(params[:id])
    end

    def category_service_params
      params.fetch(:category_service).permit(:name)
    end
end

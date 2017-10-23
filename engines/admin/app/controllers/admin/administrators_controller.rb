require_dependency "admin/application_controller"

module Admin
  class AdministratorsController < ApplicationController
    before_action :set_administrator, only: [:show, :edit, :update, :destroy]

    # GET /administrators
    def index
      @administrators = Administrator.all
    end

    # GET /administrators/1
    def show
    end

    # GET /administrators/new
    def new
      @administrator = Administrator.new
    end

    # GET /administrators/1/edit
    def edit
    end

    # POST /administrators
    def create
      @administrator = Administrator.new(administrator_params)

      if @administrator.save
        redirect_to @administrator, notice: 'Administrator was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /administrators/1
    def update
      if @administrator.update(administrator_params)
        redirect_to @administrator, notice: 'Administrator was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /administrators/1
    def destroy
      @administrator.destroy
      redirect_to administrators_url, notice: 'Administrator was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_administrator
        @administrator = Administrator.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def administrator_params
        params.require(:administrator).permit(:name)
      end
  end
end

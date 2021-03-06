class MaterialsController < ApplicationController
	# before_action :set_customer, only: [:show, :edit, :update, :destroy]

  #respond_to :html

	def index
  		@suppliers = Suppliers.all
  	end

  	def show
  		supplier = Supplier.find(params[:supplier_id])
   		@material = supplier.materials.find(params[:id])
  	end

  	def new
   		supplier = Supplier.find(params[:supplier_id])
   		@materials = supplier.materials.build
  	end

  	def edit
   		supplier = Supplier.find(params[:supplier_id])
   		@material = supplier.materials.find(params[:id])
  	end

  	def create
    	supplier = Supplier.find(params[:supplier_id])
    	@material = supplier.materials.new(material_params)
   		respond_with(@material)
  	end

	def update
		supplier = Supplier.find(params[:supplier_id])
		@material = supplier.materials.find(params[:id])
    	respond_with(@material)
  	end

	def destroy
    	@material.destroy
    	respond_with(@material)
  	end

 	private
    	def set_material
     		@material = Material.find(params[:id])
    	end

    	def material_params
      		params.require(:material).permit(:name)
    	end
	end


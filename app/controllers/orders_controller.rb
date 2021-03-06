class OrdersController < ApplicationController
  before_filter :prepare_customers
  #before_action :set_order, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @orders = Order.all
    #respond_with(@orders)
  end

  def show
    @order= Order.find(params[:id])
    @customer = Customer.all
    respond_with(@order)
  end

  def new
    @order = Order.new
    @template = Template.all
    @customer = Customer.all
    respond_with(@order)
  end

  def edit
     @order= Order.find(params[:id])
     @customer = @order.customer
     @template = @order.templates
  end

  def create
    @order = Order.new(order_params)
    flash[:notice] = 'Order was successfully created.' if @order.save
    respond_with(@order)
  end

  def update
    flash[:notice] = 'Order was successfully updated.' if @order.update(order_params)
    respond_with(@order)
  end

  def destroy
    @order.destroy
    respond_with(@order)
  end

  private

  def import
    Order.import(params[:file])
    redirect_to root_url, notice: "products imported"
  end

    def prepare_customers
      @customers = Customer.all
    end
    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:customer_id, :special_notes, :image, :due_at, :template_ids => [])
    end
end

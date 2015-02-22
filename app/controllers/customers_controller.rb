class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @customers = Customer.all
    respond_with(@customers)
  end

  def show
    respond_with(@customer)
  end

  def new
    @customer = Customer.find(params[:customer_id])
    @contact = Contact.new
    
    respond_with(@customer)
  end

  def edit
  end

  def create
    @contact = Contact.new(contact_params)
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to new_customer_contact_path(@customer)
    else
      render 'edit'
    end
  end
    #  @customer.current_step = session[:customer_step]
   # @customer.next_step
    #session[:customer_step] = @customer.current_step
  #  render 'new'
    #respond_with(@customer)
 

  def update
    @customer.update(customer_params)
    respond_with(@customer)
  end

  def destroy
    @customer.destroy
    respond_with(@customer)
  end

  private
    def set_customer
      @customer = Customer.find(params[:customer_id])
    end

    def contact_params
      params.require(:customer).permit(:company_name, :email, :phone_number, :contact_person, :customer_id)
    end
end

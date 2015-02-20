class QuotesController < ApplicationController
  before_action :set_quote, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @quotes = Quote.all
    respond_with(@quotes)
  end

  def show
    respond_with(@quote)
  end

  def new
    @quote = Quote.new
    respond_with(@quote)
  end

  def edit
  end

  def create
    @quote = Quote.new(quote_params)
    flash[:notice] = 'Quote was successfully created.' if @quote.save
    respond_with(@quote)
  end

  def update
    flash[:notice] = 'Quote was successfully updated.' if @quote.update(quote_params)
    respond_with(@quote)
  end

  def destroy
    @quote.destroy
    respond_with(@quote)
  end

  private
    def set_quote
      @quote = Quote.find(params[:id])
    end

    def quote_params
      params.require(:quote).permit(:total_amount, :order_id)
    end
end

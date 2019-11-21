class PortfoliosController < ApplicationController
  def index
    @portfolio_items = Portfolio.all
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_url, notice: 'Portfolio was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @portfolio_item = Portfolio.find(params[:id])
  end

  def update
    @portfolio_item = Portfolio.find(params[:id])
    respond_to do |format|
      if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        format.html do
          redirect_to portfolios_url,
          notice: "Portfolio: #{@portfolio_item.id}  was successfully updated."
        end
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @portfolio_item = Portfolio.find(params[:id])
  end

  def destroy
    # Fetch
    @portfolio_item = Portfolio.find(params[:id])

    # Destroy
    @portfolio_item.destroy

    # Redirect
    respond_to do |format|
      format.html do
        redirect_to portfolios_url,
        notice: "Portfolio: #{@portfolio_item.id}  was successfully deleted."
      end
    end
  end
end

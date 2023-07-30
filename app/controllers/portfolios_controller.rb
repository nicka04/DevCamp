class PortfoliosController < ApplicationController
    def index
        @portfolios = Portfolio.all
    end

    def new
        @portfolio = Portfolio.new
    end

    def create
        
        @portfolio = Portfolio.new(portfolio_params)
    
        respond_to do |format|
          if @portfolio.save
            format.html { redirect_to portfolio_url(@portfolio), notice: "Portfolio created." }
            format.json { render :show, status: :created, location: @portfolio }
          else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @portfolio.errors, status: :unprocessable_entity }
          end
        end
      end
      private
    # Use callbacks to share common setup or constraints between actions.
    def set_portfolio
      @portfolio = Portfolio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
        def portfolio_params
      params.require(:portfolio).permit(:title, :subtitle, :body, :thumb_image)
    end
end
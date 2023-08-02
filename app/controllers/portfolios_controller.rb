class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: %i[ show edit update destroy ]
    def index
        @portfolios = Portfolio.all
    end

    def new
        @portfolio = Portfolio.new
    end
    
    def edit
    end

    def show
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
 # PATCH/PUT /blogs/1 or /blogs/1.json
    def update
      respond_to do |format|
        if @portfolio.update(portfolio_params)
          format.html { redirect_to portfolios_url, notice: "Portfolio was successfully updated." }
          format.json { render :show, status: :ok, location: @portfolio }
        else
          format.html { render :edit, status: :unprocessable_entity }
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
      params.require(:portfolio).permit(:title, :subtitle, :body)
    end
end
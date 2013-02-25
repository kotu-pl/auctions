class AuctionsController < ApplicationController
  def index
    @auctions = Auction.includes(:auction_type).paginate(:page => params[:page])
    respond_to do |format|
      format.html
      format.json { render :json => @auctions.map{ |x| [x.id, x.till_the_end] } }
    end
  end

  def show
    @auction = Auction.find(params[:id])
  end

  def new
    @auction = Auction.new
  end

  def create
    @auction = Auction.new(params[:auction])
    if @auction.save
      redirect_to @auction, :notice => "Successfully created auction."
    else
      render :action => 'new'
    end
  end

  def edit
    @auction = Auction.find(params[:id])
  end

  def update
    @auction = Auction.find(params[:id])
    if @auction.update_attributes(params[:auction])
      redirect_to @auction, :notice  => "Successfully updated auction."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @auction = Auction.find(params[:id])
    @auction.destroy
    redirect_to auctions_url, :notice => "Successfully destroyed auction."
  end

end

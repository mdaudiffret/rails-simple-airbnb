class ApplicationController < ActionController::Base
  before_action :set_restuarant, only: [:show, :edit, :update, :destroy]

  def index
    @flats = Flat.all
  end

  def show
  end

  def new
    @flat = Flat.new # needed to instantiate the form_for
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.picture = Unsplash::Photo.search(@flat.city)[rand(0..3)][:urls]['small']
    @flat.save
    # no need for app/views/flats/create.html.erb
    redirect_to flats_path
  end

  def edit
  end

  def update
    @flat.update(flat_params)
    # no need for app/views/flats/update.html.erb
    redirect_to flat_path(@flat)
  end

  def destroy
    @flat.destroy
    # no need for app/views/flats/destroy.html.erb
    redirect_to flats_path
  end

  private
  def set_restuarant
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests, :city, :country)
  end
end

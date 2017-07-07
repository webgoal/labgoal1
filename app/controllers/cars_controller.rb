class CarsController < ApplicationController
  def index
    @carros = Car.all
  end
end

class BirdsController < ApplicationController

  # POST /birds
  def create
    byebug
  end

  def show
    # params[:id] refers to the dynamic part of our route, defined by :id
    # a request to /birds/2 would give params[:id] a value of 2
    bird = Bird.find_by(id: params[:id])
    render json: bird
  end

  def create
    bird = Bird.create(name: params[:name], species: params[:species])
    render json: bird, status: :created
  end
end
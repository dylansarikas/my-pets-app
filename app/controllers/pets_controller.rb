class PetsController < ApplicationController

  def index
    pets1 = Pet.all
    render json: pets1.as_json
  end

  def create
    pets1 = Pet.new(
      species: params[:species],
      name: params[:name],
      personality: params[:personality],
      age: params[:age]
    )
    pets1.save
    render json: pets1.as_json
  end

  def show
    number = params[:id].to_i
    pets1 = Pet.find(number)
    render json: pets1.as_json
  end

  def update
    number = params[:id].to_i
    pets1 = Pet.find(number)
    pets1.name = params[:name] || pets1.name
    pets1.species = params[:species] || pets1.species
    pets1.personality = params[:personality] || pets1.personality
    pets1.age = params[:age] || pets1.age
    pets1.save
    render json: pets1.as_json
  end

  def destroy
    number = params[:id].to_i
    pets1 = Pet.find(number)
    pets1.destroy
    render json:{message: "The pets #{pets1.name} was destroyed!  Do you feel terrible?"}
  end

end

class Api::V1::CharactersController < ApplicationController

  def index
    @characters = Character.all
  end

  def create
    @character = Character.new(
                              first_name: params[:first_name],
                              last_name: params[:last_name],
                              house: params[:house]
                              )
    if @character.save
      render :show
    else
      render json: { errors: @character.errors.full_messages }, status: 422
    end
  end

  def show
    @character = Character.find(params[:id])
  end

  def update
    @character = Character.find(params[:id])

    @character.assign_attributes(
                                first_name: params[:first_name],
                                last_name: params[:last_name],
                                house: params[:house]
                                )
    @character.save
    render :show
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    render :index
  end

end

class CharactersController < ApplicationController
  def index; end

  def show
    @character = Character.find_by(id: params[:id])
  end
end

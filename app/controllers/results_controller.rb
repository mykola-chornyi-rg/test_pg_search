class ResultsController < ApplicationController
  def index
    @search_results = Character.search_everywhere(params[:query])
  end
end

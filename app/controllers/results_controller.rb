class ResultsController < ApplicationController
  def index
    start = Time.new
    @search_results = Character.ft_search(params[:query])
    @time_search_pg_search = (Time.now - start).to_s

    start2 = Time.new
    @search_results2 = Character.where("information LIKE ?", "%#{params[:query]}%")
    @time_search_pg_search2 = (Time.now - start2).to_s
  end
end

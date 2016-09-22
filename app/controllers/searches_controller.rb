require 'rillow'

class SearchesController < ApplicationController
  def search
  end

  def zillow
  rillow = Rillow.new('X1-ZWz1fgbe5szxmz_29gz1') 
  result = rillow.get_search_results(params[:address],params[:citystatezip]) 
  result.to_hash
  puts result
  render 'search'
  end
end
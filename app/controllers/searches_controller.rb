require 'rillow'
require 'pry'

class SearchesController < ApplicationController
  def search
  end

  def zillow
  rillow = Rillow.new('X1-ZWz1fgbe5szxmz_29gz1') 
  result = rillow.get_search_results(params[:address], params[:citystatezip]) 
  result.to_hash

  zpid = result["response"][0]["results"][0]["result"][0]["zpid"][0]
  street = result["response"][0]["results"][0]["result"][0]["address"][0]["street"][0]
  city = result["response"][0]["results"][0]["result"][0]["address"][0]["city"][0]
  zip = result["response"][0]["results"][0]["result"][0]["address"][0]["zipcode"][0]
  state = result["response"][0]["results"][0]["result"][0]["address"][0]["state"][0]
  latitude = result["response"][0]["results"][0]["result"][0]["address"][0]["latitude"][0]
  longitude = result["response"][0]["results"][0]["result"][0]["address"][0]["longitude"][0]
  zestimate = result["response"][0]["results"][0]["result"][0]["zestimate"][0]["amount"][0]["content"] 
  thirty_day_change = result["response"][0]["results"][0]["result"][0]["zestimate"][0]["valueChange"][0]["content"]

  principle_property = Property.create(zpid:zpid, street:street, city:city, zip:zip, state:state, latitude:latitude, longitude:longitude, zestimate:zestimate, thirty_day_change:thirty_day_change)
 
  render 'search'
  end
end
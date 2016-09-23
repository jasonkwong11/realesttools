require 'rillow'

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
  
  comps = Rillow.new('X1-ZWz1fgbe5szxmz_29gz1')
  response = comps.get_deep_comps(principle_property.zpid, 25) 

  principle_property.percentile = response["response"][0]["properties"][0]["principal"][0]["zestimate"][0]["percentile"][0]
  principle_property.year_tax_assessed = response["response"][0]["properties"][0]["principal"][0]["taxAssessmentYear"][0]
  principle_property.tax_assessment = response["response"][0]["properties"][0]["principal"][0]["taxAssessment"][0]
  principle_property.year_built = response["response"][0]["properties"][0]["principal"][0]["yearBuilt"][0]
  principle_property.square_feet = response["response"][0]["properties"][0]["principal"][0]["lotSizeSqFt"][0]
  principle_property.bathrooms = response["response"][0]["properties"][0]["principal"][0]["bathrooms"][0]
  principle_property.bedrooms = response["response"][0]["properties"][0]["principal"][0]["bedrooms"][0]
  principle_property.last_sold_date = response["response"][0]["properties"][0]["principal"][0]["lastSoldDate"][0]
  principle_property.last_sold_price = response["response"][0]["properties"][0]["principal"][0]["lastSoldPrice"][0]["content"]

  #principle_property object is has all of it's associated data
  #now iterate through the comparables has to instantiate new comp objects
  comparables_hash = response["response"][0]["properties"][0]["comparables"][0]["comp"]

  comparables_hash.each do ||

  end

  require 'pry'
  binding.pry

  render 'search'
  end
end
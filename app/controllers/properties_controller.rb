class PropertiesController < ApplicationController
  def index
  end

  def show
    @property = Property.last
    require 'pry'
    binding.pry
  end
end
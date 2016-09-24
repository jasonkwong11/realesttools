class PropertiesController < ApplicationController

  def show
    @property = Property.last
    respond_to do |format|
      format.html {render :show}
      format.json { render json: @property}
    end
  end
end
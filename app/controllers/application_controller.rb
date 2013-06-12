class ApplicationController < ActionController::Base
  protect_from_forgery
   layout 'home', :only =>[:index] 
  def index
    @json =Location.show_map
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @json}
    end
  end
end

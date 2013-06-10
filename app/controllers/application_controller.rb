class ApplicationController < ActionController::Base
  protect_from_forgery
def index
    @json = Location.all.to_gmaps4rails do |device, marker|
    marker.picture({
     :picture => "#{device.pin.image_url unless device.pin.nil?}", # up to you to pass the proper parameters in the url, I guess with a method from device
     :width   => 32,
     :height  => 32
   })
end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @locations }
    end

end
end

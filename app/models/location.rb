class Location < CouchRest::Model::Base
include Gmaps4rails::ActsAsGmappable
belongs_to :pin
acts_as_gmappable :position => :location
	property :name, String
	property :address, String
	property :longitude, Float
	property :latitude, Float
	property :gmaps ,String
	property :pin_id , Integer
	acts_as_gmappable
      def gmaps4rails_address
          address
      end
      def gmaps4rails_infowindow
        "<h4>#{name}</h4>" << "<h4>#{address}</h4>"
      end

      def self.show_map
        Location.all.to_gmaps4rails do |device, marker|
          marker.picture({
            :picture => "#{device.pin.image_url unless device.pin.nil?}", # up to you to pass the proper parameters in the url, I guess with a method from device
            :width   => 32,
            :height  => 32
          })
         end
     end
  end
class Location 
 include Mongoid::Document
  include Mongoid::Timestamps

include Gmaps4rails::ActsAsGmappable
acts_as_gmappable :position => :location

field :location, :type => Array
  belongs_to :pin
  field :title , type: String
  field :address,type: String
  field :description ,type: String
  field :longitude,type: Float
  field :latitude,type: Float
  field :site_link,type: String
  field :gmaps ,type: String
  field :pin_id ,type: Integer
  acts_as_gmappable :process_geocoding => false   
        #     address
      # end
      def gmaps4rails_infowindow
        "<h4>#{title}</h4>" << "<h4>#{address}</h4>"<< "<h5>#{description}</h5>"<< "<a href=#{site_link}>#{site_link}</a>"
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
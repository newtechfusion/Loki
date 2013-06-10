class Location < CouchRest::Model::Base
include Gmaps4rails::ActsAsGmappable
acts_as_gmappable :position => :location
	property :name, String
	property :address, String
	property :longitude, Float
	property :latitude, Float
	property :gmaps ,String
	acts_as_gmappable
      def gmaps4rails_address
          address
      end
       def gmaps4rails_infowindow
         "<h4>#{name}</h4>" << "<h4>#{address}</h4>"
     end
end

class User < CouchRest::Model::Base
	acts_as_gmappable :position => :location
	field :location, :type => Array
		def gmaps4rails_address
			#describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
			"#{self.street}, #{self.city}, #{self.country}" 
  		end

  property :first_name,String
  property :last_name,String   
  property :nick_name,String  
  property :email,String
  property :website,String
  property :aim,String
  property :yahoo,String
  property :gabeer,String
  property :about_you,String
  property :address
  validates_uniqueness_of :first_name,:email,:yahoo
end

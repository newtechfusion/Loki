class Pin 
 include Mongoid::Document
  include Mongoid::Timestamps

  field :name,type:String
  field :image_url,type: String

end

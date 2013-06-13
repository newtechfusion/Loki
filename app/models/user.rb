class User 
 include Mongoid::Document
  include Mongoid::Timestamps

  field :last_name,type: String   
  field :first_name,type: String   
  field :nick_name,type: String  
  field :email,type: String
  field :website,type: String
  field :aim,type: String
  field :yahoo,type: String
  field :gabeer,type: String
  field :about_you,type: String
end

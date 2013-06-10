class User < CouchRest::Model::Base
  property :first_name,String
  property :last_name,String   
  property :nick_name,String  
  property :email,String
  property :website,String
  property :aim,String
  property :yahoo,String
  property :gabeer,String
  property :about_you,String
end

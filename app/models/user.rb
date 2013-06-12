class User < CouchRest::Model::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

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

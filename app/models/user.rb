class User < ActiveRecord::Base
   # Remember to create a migration!
  validates :username, :email, :password_digest, presence: true
  validates :email, uniqueness: true
  has_many :votes
  has_many :hotspots
  
  has_secure_password

  def self.authenticate(email, password)
    user = User.find_by(email: email)
    if user && user.authenticate(password)
      user
    else
      nil
    end
  end
end

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  #has_secure_password
  #has_many :api_keys
  validates :email, presence:true, uniqueness: {case_sensitive:false, message:'Correo electrónico existente'}
  validates :username, presence:true, uniqueness: {case_sensitive:false, message:'Nombre de usuario existente'}
  validates :name, presence: true

  #def session_api_key
  #	put 'session_api_key'
  #  api_keys.active.session.first_or_create
  #end

  before_save :ensure_authentication_token
  
  # leave the devise line
  # devise :database_authenticatable etc.


  # Test if user has a role e.g. :admin, :user
  def role?(role_arg)
    return role_arg.to_s == self.role.downcase
  end
 
  def ensure_authentication_token
    puts 'ensure_authentication_token'
    puts authentication_token
    if authentication_token.blank?
      self.authentication_token = generate_authentication_token
    end
  end

  # Forces a new authentication token to be generated for this user and saves it
  # to the database
  def reset_authentication_token!
    self.authentication_token = generate_authentication_token
    save
  end
 
  private
 
    def generate_authentication_token
      loop do
        token = Devise.friendly_token
        p token
        break token unless User.where(authentication_token: token).first
      end
    end
end
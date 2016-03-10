class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts
  has_attached_file :profilephoto, styles: { large: "400x400#", medium: "100x100#", thumb: "30x30#" }, default_url: ""
  validates_attachment_content_type :profilephoto, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"] 
  
end

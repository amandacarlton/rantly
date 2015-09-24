class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "default.jpg"

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates :name, presence: true

  has_many :rants, dependent: :destroy

  has_many :followers, class_name: "Follower", foreign_key:"follower_id"
  has_many :idols, class_name: "Follower", foreign_key: "idol_id"


end

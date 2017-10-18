class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :listings
  belongs_to :role

  validates_presence_of :first_name, :last_name, :email

  def is_admin?
    true
  end
end

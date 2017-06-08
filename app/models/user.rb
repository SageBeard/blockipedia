class User < ActiveRecord::Base
  after_initialize :set_default

  def set_default
   add_role(:role)
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :wikis
  enum role: [:standard, :premium, :admin]
end

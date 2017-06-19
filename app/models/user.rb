class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :wikis
  enum role: [:standard, :premium, :admin]

  after_initialize :init
  def init
    self.role  ||= :standard          #will set the default value only if it's nil
  end

  def downgrade_user
    self.role = :standard
  end
end

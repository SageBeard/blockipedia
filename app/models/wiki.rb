class Wiki < ActiveRecord::Base
  belongs_to :user
  validates :user, presence: true

  scope :visible_to, -> (user) do
     return all if user && (user.premium? || user.admin?)
     where(private: [false, nil])
  end

end

class Channel < ActiveRecord::Base

  has_many :messages
  has_many :channel_memberships
  has_many :players, through: :channel_memberships

  validates :name, presence: true, length: {minimum: 4}

end

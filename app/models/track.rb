class Track < ActiveRecord::Base
  validates :name, presence: true
  validates :kind, inclusion: %w(regular bonus)

  belongs_to :album
  has_one :band, through: :album, source: :band



end

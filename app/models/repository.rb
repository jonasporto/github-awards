class Repository < ActiveRecord::Base
  belongs_to :user
  scope :with_language, -> { where("language IS NOT NULL") }
  validates :name, presence: true, uniqueness: {scope: :user_id}
  validates :user_id, presence: true
end

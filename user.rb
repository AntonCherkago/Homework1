class User < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates_date :date_of_birth, :before => lambda { 15.years.ago },
                                 :before_message => "must be at least 15 years old"     #установлен гем validate_timeliness"
  scope :active -> {where ("active = true")}
  scope :grownup -> {active.where("21.years.ago")}
  self.search
  before_save :set_position



  def set_position
    self.active = self.first_name.present && self.last_name.present
  end

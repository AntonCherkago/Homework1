class User < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates_date :date_of_birth, :before => lambda { 15.years.ago },
                                 :before_message => "must be at least 15 years old"   #установлен гем validate_timeliness"

  scope :by_status_and_age, -> status { where(status: active) }

  def self.search(search)
   where ( "first_name?" ,   "%#{search}%" )
   where ( "last_name?" ,   "%#{search}%" ) 
 end

end

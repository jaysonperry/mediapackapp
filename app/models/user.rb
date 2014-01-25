class User < ActiveRecord::Base
  belongs_to :role
  before_create :set_default_role
  has_one :fact_sheet # Generally, user will have only one fact sheet
  
  private
  def set_default_role
    self.role ||= Role.find_by_name('registered')
  end
  
  
  # validating reg_code existence and length

  validates :reg_code, presence: true, inclusion: { in: %W(seiob14s seiob14j seiob14c nsfyb14), message: "Code is not included in the list" }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

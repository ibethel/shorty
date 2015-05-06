class User < ActiveRecord::Base
  
  has_many :shorts
  before_create :generate_api_key
  validates_presence_of :name
  validates_uniqueness_of :name,:if => Proc.new { |user| user.provider == "api" }
  validates :api_key, uniqueness: true
  
  def self.create_with_omniauth(auth)
    puts auth
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["user_info"]["name"]
    end
  end
  
  def generate_api_key
    self.api_key = ActiveSupport::SecureRandom.base64.gsub(/[^0-9a-z]/i, "")
  end
  
end

class User < ActiveRecord::Base

  has_many :shorts
  before_create :generate_api_key
  validates_presence_of :name
  validates_presence_of :email
  validates_uniqueness_of :name,:if => Proc.new { |user| user.provider == "api" }
  validates :api_key, uniqueness: true
  # validates :email, format: { with: /\b[A-Z0-9._%a-z\-]+@bethel\.com\z/, message: "invalid email domain account" }

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"].gsub(/[^0-9A-Za-z]/, '')
      user.email = auth["info"]["email"]
    end
  end

  def generate_api_key
    self.api_key = SecureRandom.base64.gsub(/[^0-9a-z]/i, "")
  end

end

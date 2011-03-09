class Short < ActiveRecord::Base
  
  attr_accessible :expanded
  before_create :generate_short_code
  validates :expanded, 
            :presence => true,   
            :uniqueness => true, 
            :format => { :with => /^(http|https):\/\/[a-z0-9]/ix }
            
  validates :contracted, uniqueness: true
  has_many :visits, :dependent => :delete_all
  default_scope :order => "updated_at DESC"
  
  
  def generate_short_code
    self.contracted = ActiveSupport::SecureRandom.base64(Random.new.rand(4..8)).gsub(/[^0-9a-z]/i, '')
  end
  
  def record_visit(referrer)
    Visit.create(short: self, referred: referrer)
  end
  
end
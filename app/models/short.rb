class Short < ActiveRecord::Base
  before_create :generate_short_code
  before_save :generate_page_title
  validates :expanded, 
            :presence => true,
            :format => { :with => /^(http|https):\/\/[a-z0-9]/ix }
            
  validates :contracted, uniqueness: true
  has_many :visits, :dependent => :delete_all
  default_scope :order => "updated_at DESC"
  has_friendly_id :contracted, :use_slug => true
  
  
  def generate_short_code
    self.contracted = ActiveSupport::SecureRandom.base64(Random.new.rand(4..8)).gsub(/[^0-9a-z]/i, "") if contracted.blank?
  end
  
  def record_visit(referrer)
    Visit.create(short: self, referred: referrer)
  end
  
  def title
    read_attribute(:title) || expanded
  end
  
  
  def generate_page_title
    require 'nokogiri'  
    require 'open-uri'
    
    begin
      doc = Nokogiri::HTML(open(expanded))
      self.title = doc.at_css("title").text
    rescue SocketError => error
    rescue Exception => error
      self.title = nil
    end
  end
  
end
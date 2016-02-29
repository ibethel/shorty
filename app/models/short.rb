class Short < ActiveRecord::Base
  before_validation SlugHandler.new("contracted")
  before_save :generate_page_title

  validates :expanded,
            :presence => true,
            :format => { :with => /\A(http|https):\/\/[a-z0-9]/ix }

  validate SlugHandler.new("contracted"), if: :contracted_changed?

  has_many :visits, :dependent => :delete_all
  belongs_to :user

  scope :exclude_bethel_tv, -> {where("expanded NOT LIKE ?", "%bethel.tv%" )}
  scope :exclude_podcasts, -> {where("expanded NOT LIKE ?", "%podcasts.ibethel.org%" )}

  default_scope { order("updated_at DESC") }

  def record_visit(referrer, ipaddy)
    Visit.create(short: self, referred: referrer, ipaddress: ipaddy)
  end

  def title
    read_attribute(:title) || expanded
  end

  def as_json(options = {})
    super(:only => [:contracted, :expanded], :methods => [:clicks, :hashed, :created])
  end

  def hashed
    contracted
  end

  def clicks
    visits.count
  end

  def created
    created_at
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

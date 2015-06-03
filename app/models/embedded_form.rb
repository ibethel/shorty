class EmbeddedForm < ActiveRecord::Base
  include ClassyEnum::ActiveRecord

  before_validation SlugHandler.new("url_slug")

  validates :name, :service, :form_url, presence: true
  validate SlugHandler.new("url_slug")

  classy_enum_attr :service
end

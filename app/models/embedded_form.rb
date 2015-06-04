class EmbeddedForm < ActiveRecord::Base
  include ClassyEnum::ActiveRecord

  before_validation SlugHandler.new("url_slug")

  validates :name, :service, :form_url, presence: true
  validate SlugHandler.new("url_slug"), if: :url_slug_changed?

  classy_enum_attr :service
end

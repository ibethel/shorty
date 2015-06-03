class SlugHandler
  def initialize(attribute)
    @attribute = attribute
  end

  def before_validation(record)
    record.send("#{@attribute}=", generate_unique_slug) if record.send("#{@attribute}").blank?
  end

  def validate(record)
    record.errors.add("#{@attribute}", "can't be blank") unless record.send("#{@attribute}").present?
    record.errors.add("#{@attribute}", "has already been taken") unless slug_unique?(record.send("#{@attribute}"))
  end

  private

  def generate_unique_slug
    existing = existing_slugs
    loop do
      slug = SecureRandom.base64(Random.new.rand(4..8)).gsub(/[^0-9a-z]/i, "")
      break slug if slug_unique?(slug, existing)
    end
  end

  # gives all the slugs used across all the tables that use slugs.
  # WARNING: If you add a table that uses a slug, you MUST add it here!
  def existing_slugs
    Short.pluck(:contracted) + EmbeddedForm.pluck(:url_slug)
  end

  # returns true if the given slug is unique considering the given array of existing slugs. If no array is given, build the list from all tables which use slugs.
  def slug_unique?(test_slug, existing = existing_slugs)
    !existing.include?(test_slug)
  end
end

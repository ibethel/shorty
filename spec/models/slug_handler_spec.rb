require 'spec_helper'

describe SlugHandler do
  context "before saving associated record" do
    it "doesn't do anything if the attribute is already there" do
      short = Short.new(expanded: "http://google.com", contracted: "short_contract")
      old_contracted = short.contracted
      SlugHandler.new("contracted").before_validation(short)
      expect(old_contracted).to eq short.contracted

      form = EmbeddedForm.new(name: "A Name", service: "survey_gizmo", url_slug: "some_slug", form_url: "3938292")
      old_slug = form.url_slug
      SlugHandler.new("url_slug").before_validation(form)
      expect(old_slug).to eq form.url_slug
    end

    it "creates a random, unique attribute if it's not already there" do
      short = Short.new(expanded: "http://google.com", contracted: nil)
      old_contracted = short.contracted
      SlugHandler.new("contracted").before_validation(short)
      expect(old_contracted).to_not eq short.contracted
      expect(short.contracted).to_not be_blank

      short = Short.new(expanded: "http://google.com", contracted: "")
      old_contracted = short.contracted
      SlugHandler.new("contracted").before_validation(short)
      expect(old_contracted).to_not eq short.contracted
      expect(short.contracted).to_not be_blank

      form = EmbeddedForm.new(name: "A Name", service: "survey_gizmo", url_slug: nil, form_url: "3938292")
      old_slug = form.url_slug
      SlugHandler.new("url_slug").before_validation(form)
      expect(old_slug).to_not eq form.url_slug
      expect(form.url_slug).to_not be_blank

      form = EmbeddedForm.new(name: "A Name", service: "survey_gizmo", url_slug: "", form_url: "3938292")
      old_slug = form.url_slug
      SlugHandler.new("url_slug").before_validation(form)
      expect(old_slug).to_not eq form.url_slug
      expect(form.url_slug).to_not be_blank
    end
  end

  context "when validating associated record" do
    it "doesn't do anything if the attribute is unique" do
      short = Short.create!(expanded: "http://google.com", contracted: "short_contract")
      form = FactoryGirl.create(:embedded_form, url_slug: "form_slug")

      test = Short.new(expanded: "http://google.com", contracted: "unique")
      SlugHandler.new("contracted").validate(test)
      expect(test.valid?).to eq true
      expect(test.errors).to be_empty

      test = EmbeddedForm.new(name: "A Name", service: "survey_gizmo", url_slug: "some_slug", form_url: "3938292")
      SlugHandler.new("url_slug").validate(test)
      expect(test.valid?).to eq true
      expect(test.errors).to be_empty
    end

    it "adds an error if the attribute is not unique" do
      short = Short.create!(expanded: "http://google.com", contracted: "short_contract")
      form = FactoryGirl.create(:embedded_form, url_slug: "form_slug")

      test = Short.new(expanded: "http://google.com", contracted: "form_slug")
      SlugHandler.new("contracted").validate(test)
      expect(test.errors).to_not be_empty
      expect(test.errors.full_messages).to eq ["Contracted has already been taken"]

      test = EmbeddedForm.new(name: "A Name", service: "survey_gizmo", url_slug: "form_slug", form_url: "3938292")
      SlugHandler.new("url_slug").validate(test)
      expect(test.errors).to_not be_empty
      expect(test.errors.full_messages).to eq ["Url slug has already been taken"]
    end
  end

  context "private methods" do
    it "correctly gets a list of existing slugs" do
      subject = SlugHandler.new("contracted")
      expect(subject.send(:existing_slugs)).to be_empty

      short = Short.create!(expanded: "http://google.com", contracted: "short_contract")
      expect(subject.send(:existing_slugs)).to match_array ["short_contract"]

      form = FactoryGirl.create(:embedded_form, url_slug: "form_slug")
      expect(subject.send(:existing_slugs)).to match_array ["short_contract", "form_slug"]
    end

    it "correctly determines if a given slug is unique" do
      short = Short.create!(expanded: "http://google.com", contracted: "short_contract")
      form = FactoryGirl.create(:embedded_form, url_slug: "form_slug")

      expect(SlugHandler.new("contracted").send(:slug_unique?, "hello")).to eq true
      expect(SlugHandler.new("url_slug").send(:slug_unique?, "short_contract")).to eq false
      expect(SlugHandler.new("contracted").send(:slug_unique?, "form_slug")).to eq false
    end

    it "correctly determines if a given slug is unique using a given array of existing" do
      short = Short.create!(expanded: "http://google.com", contracted: "short_contract")
      form = FactoryGirl.create(:embedded_form, url_slug: "form_slug")

      expect(SlugHandler.new("contracted").send(:slug_unique?, "hello")).to eq true
      expect(SlugHandler.new("url_slug").send(:slug_unique?, "hello", ["hello"])).to eq false
      expect(SlugHandler.new("contracted").send(:slug_unique?, "form_slug", ["hello", "short_contract"])).to eq true
    end

    it "correctly generates a random, unique slug" do
      short = Short.create!(expanded: "http://google.com", contracted: "short_contract")
      form = FactoryGirl.create(:embedded_form, url_slug: "form_slug")

      generated = SlugHandler.new("contracted").send(:generate_unique_slug)

      expect([short.contracted, form.url_slug].include?(generated)).to eq false
    end
  end

  # context "when generating a slug" do
  #   it "generates a value if none already" do
  #     expect(subject.contracted).to be_blank
  #
  #     subject.send(:generate_short_code)
  #     expect(subject.contracted).to_not be_blank
  #   end
  #
  #   it "doesn't generate a value if one already" do
  #     expect(subject.contracted).to be_blank
  #     contracted_text = "hello"
  #     subject.contracted = contracted_text
  #     expect(subject.contracted).to eq contracted_text
  #
  #     subject.send(:generate_short_code)
  #     expect(subject.contracted).to eq contracted_text
  #   end
  #
  #   it "generates a code on create" do
  #     expect(subject.contracted).to be_blank
  #     subject.save(validate: false)
  #     expect(subject.contracted).to_not be_blank
  #   end
  # end
end

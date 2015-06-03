require 'spec_helper'

describe EmbeddedForm do
  let(:subject) { FactoryGirl.create(:embedded_form) }
  context "validations" do
    it "should validate presence of name" do
      subject.name = nil
      expect(subject.save).to eq false
      expect(subject.errors.full_messages).to include "Name can't be blank"

      subject.name = ""
      expect(subject.save).to eq false
      expect(subject.errors.full_messages).to include "Name can't be blank"
    end

    it "should validate presence of service name" do
      subject.service = nil
      expect(subject.save).to eq false
      expect(subject.errors.full_messages).to include "Service can't be blank"

      subject.service = ""
      expect(subject.save).to eq false
      expect(subject.errors.full_messages).to include "Service can't be blank"
    end

    it "should validate service name included in enum" do
      subject.service = "wrong"
      expect(subject.save).to eq false
      expect(subject.errors.full_messages).to include "Service is not included in the list"
    end

    it "should validate presence of the url slug" do
      subject.url_slug = nil
      SlugHandler.any_instance.stub(:before_validation) { true }
      expect(subject.save).to eq false
      expect(subject.errors.full_messages).to include "Url slug can't be blank"

      subject.url_slug = ""
      expect(subject.save).to eq false
      expect(subject.errors.full_messages).to include "Url slug can't be blank"
    end

    it "should validate uniqueness of the url slug" do
      form2 = FactoryGirl.create(:embedded_form)
      form2.url_slug = subject.url_slug

      expect(subject.save).to eq false
      expect(subject.errors.full_messages).to include "Url slug has already been taken"
    end

    it "should validate presence of form id" do
      subject.form_url = nil
      expect(subject.save).to eq false
      expect(subject.errors.full_messages).to include "Form can't be blank"

      subject.form_url = ""
      expect(subject.save).to eq false
      expect(subject.errors.full_messages).to include "Form can't be blank"
    end
  end
end

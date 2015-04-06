require 'spec_helper'

describe Short do
  let(:subject) { Short.new }

  context "validations" do
    it "validates presence of expanded" do
      expect(subject.save).to eq false
      expect(subject.errors.full_messages).to match_array ["Expanded can't be blank", "Expanded is invalid"]
    end

    it "validates the format of expanded" do
      subject.expanded = "google.com"
      expect(subject.save).to eq false
      expect(subject.errors.full_messages).to match_array ["Expanded is invalid"]

      subject.expanded = "http:google.com"
      expect(subject.save).to eq false
      expect(subject.errors.full_messages).to match_array ["Expanded is invalid"]

      subject.expanded = "http://google.com"
      expect(subject.save).to eq true
    end

    it "validates the uniqueness of contracted" do
      subject.expanded = "http://google.com"
      expect(subject.save).to eq true

      short2 = Short.create!(expanded: "http://yahoo.com")
      short2.contracted = subject.contracted

      expect(short2.save).to eq false
      expect(short2.errors.full_messages).to eq ["Contracted has already been taken"]
    end
  end

  context "when generating short code" do
    it "generates a value if none already" do
      expect(subject.contracted).to be_blank

      subject.generate_short_code
      expect(subject.contracted).to_not be_blank
    end

    it "doesn't generate a value if one already" do
      expect(subject.contracted).to be_blank
      contracted_text = "hello"
      subject.contracted = contracted_text
      expect(subject.contracted).to eq contracted_text

      subject.generate_short_code
      expect(subject.contracted).to eq contracted_text
    end

    it "generates a code on create" do
      expect(subject.contracted).to be_blank
      subject.save(validate: false)
      expect(subject.contracted).to_not be_blank
    end
  end

  context "visits" do
    before(:each) do
      subject.expanded = "http://google.com"
      subject.save!
      Visit.destroy_all
      expect(Visit.count).to eq 0
    end

    it "properly records a Visit" do
      subject.record_visit("referrer", "ipaddress")
      expect(Visit.count).to eq 1
    end

    it "properly deletes all visits when destroyed" do
      subject.record_visit("referrer", "ipaddress")
      subject.record_visit("referrer", "ipaddress")
      subject.record_visit("referrer", "ipaddress")
      expect(Visit.count).to eq 3

      subject.destroy
      expect(Visit.count).to eq 0
    end
  end

  context "when retrieving the title" do
    before(:each) do
      allow(subject).to receive_messages(generate_page_title: nil)
      @expanded_text = "http://google.com"
      subject.expanded = @expanded_text
      subject.save!
    end

    it "returns the expanded attribute if no title" do
      expect(subject.title).to eq @expanded_text
    end

    it "returns the title attribute if present" do
      title_text = "hello"
      subject.update_attribute(:title, title_text)

      expect(subject.title).to eq title_text
    end
  end

  context "when generating a page title" do
    before(:each) do
      subject.expanded = "http://google.com"
      subject.title = nil
      expect(subject.read_attribute(:title)).to be_blank
    end

    it "gets the correct title from the expanded value" do
      subject.generate_page_title
      expect(subject.read_attribute(:title)).to eq "Google"
    end

    it "generates a title when saved" do
      subject.save!
      expect(subject.read_attribute(:title)).to eq "Google"
    end
  end
end

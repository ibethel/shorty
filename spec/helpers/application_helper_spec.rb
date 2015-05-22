require 'spec_helper'

describe ApplicationHelper do
  let(:short) { Short.create!(expanded: "http://www.google.com", contracted: "hello")}

  it "gets the proper short url" do
    expect(short_url(short)).to eq "#{root_url}hello"
  end

  it "gets the proper stats url" do
    expect(stats_url(short)).to eq "#{admin_root_url}/hello"
  end
end

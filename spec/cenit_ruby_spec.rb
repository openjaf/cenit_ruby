require 'spec_helper'

describe CenitRuby do

  before do
    CenitRuby.configure do |config|
      config.connection_id = "123"
      config.connection_token = "token"
    end
  end

  it "connection_id can be configured" do
    expect(CenitRuby.configuration.connection_id).to eql '123'
  end

  it "connection_token can be configured" do
    expect(CenitRuby.configuration.connection_id).to eql '123'
  end

  it "set's the default push url to cenithub.com" do
    expect(CenitRuby.configuration.push_url).to eql 'https://www.cenithub.com/api/v1/push'
  end

  context "override the push_url" do
    before do
      CenitRuby.configure do |config|
        config.push_url = "https://my_pushingproxy.com"
      end
    end

    it "push_url default can be overridden" do
      expect(CenitRuby.configuration.push_url).to eql "https://my_pushingproxy.com"
    end

  end

end

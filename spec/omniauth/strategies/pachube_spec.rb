require 'spec_helper'
require 'omniauth-pachube'

describe OmniAuth::Strategies::Pachube do
  before :each do
    @request = double('Request')
    @request.stub(:params) { {} }
  end

  subject do
    OmniAuth::Strategies::Pachube.new(nil, @options || {}).tap do |strategy|
      strategy.stub(:request) { @request }
    end
  end

  it_should_behave_like 'an oauth2 strategy'

  describe '#client' do
    it 'has correct Pachube site' do
      subject.client.site.should eq('https://pachube.com')
    end

    it 'has correct authorize url' do
      subject.client.options[:authorize_url].should eq('/oauth/authenticate')
    end

    it 'has correct token url' do
      subject.client.options[:token_url].should eq('/oauth/token')
    end

    it 'has correct http_method' do
      subject.client.options[:http_method].should eq(:get)
    end
  end
end

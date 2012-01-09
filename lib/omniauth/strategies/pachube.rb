require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Pachube < OmniAuth::Strategies::OAuth2
      option :client_options, {
        :site => 'https://pachube.com',
        :http_method => :get,
        :authorize_url => "/oauth/authenticate"
      }
    end
  end
end

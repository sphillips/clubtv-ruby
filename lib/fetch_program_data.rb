require 'rest-client'
require 'json'

class FetchProgramData
  BASE_URL_PROGRAMS = 'http://a98952108bd50135ea8c543d7edaf0a0.scheduler.vidibus.net/api/channels/5aa6722c1d0a7e7578e21c1d/playlist.json'
  attr_reader :base_url

  def initialize
    @base_url = BASE_URL_PROGRAMS
  end

  def fetch
    request(base_url)
  end

  def request(url)
    RestClient::Request.execute(url: url, method: :get, verify_ssl: false) do |response|
      JSON.parse(response)
    end
  end
end

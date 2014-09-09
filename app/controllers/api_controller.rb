class ApiController < ApplicationController

  require 'openssl'
  require 'net/http'

  def instagram
  	source = 'https://api.instagram.com/v1/tags/ipa/media/recent?client_id=9efad9c8a37a4836ba4e5152fe9495f7'
   	
  	@instagrams = fetch_url_data(source)

    @instagrams = @instagrams['data']
  end

  def marta
	  source = 'http://developer.itsmarta.com/BRDRestService/BRDRestService.svc/GetAllBus'
    
    @buses = fetch_url_data(source)

    render json: @buses
  end

  def fetch_url_data(source)
  	resp = Net::HTTP.get_response(URI.parse(source))
    data = resp.body
    response = JSON.parse(data)

    return response
  end
end

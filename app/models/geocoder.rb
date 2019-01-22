require 'net/http'

class Geocoder
	include ActiveModel::Model

	attr_accessor :localization, :lat, :lng

  def initialize(localization)
    @localization = "#{localization}"
  end


  def get_lat_lng 
    begin
      #uri = URI("http://localhost:3000/pl/club_devices")
      uri = URI("#{Rails.application.secrets[:pi2map_api_url]}/jakis adres")
      http = Net::HTTP.new(uri.host, uri.port)
      # SSL 
      #http.use_ssl = true
      #http.verify_mode = OpenSSL::SSL::VERIFY_NONE # Sets the HTTPS verify mode
      # /.SSL 
      response = Net::HTTP.get_response(uri)
      self.lat = response.body[] #certificate_resp["certificates"][0]["division"]["short_name"]
      self.lng = 'LNG'

      render json: response.body, status: response.code
    rescue => e
      puts '========================== API ERROR "pi2map_api" ==========================='
      puts "#{e}"
      puts '============================================================================='
    end
  end

end
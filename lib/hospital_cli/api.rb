class Api
    attr_accessor :url
  
    def initialize(url)
      @url = "https://www.houstonmethodist.org/imaging-radiology/services/"
    end
  
    def search_imaging_by_name(name)
      req_url="#{url}/imaging/#{name}"
      data = HTTParty.get(req_url)
      imaging_hash = {
        procedure: data["procedure"],
        machine: data["name"],
        doctor: data["doctors"].first["doctors"]["name"],
        iodine: data["iodines"].first["iodine"]["name"],
        body_part: data["body_parts"].map {hash| hash["body_part"]["name"]}
      }
  
      imaging = Hospital.new(imaging_hash)
      #binding.pry
      puts imaging.machine
    end
  end

  #api = Api.new("https://www.houstonmethodist.org/imaging-radiology/services/")

  #api.search_imaging_by_name("Cardiovascular Radiology")
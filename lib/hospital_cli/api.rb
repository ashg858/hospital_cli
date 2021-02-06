class Api
    attr_accessor :url, :name, :procedure_name
  
    def initialize(url)
      @url = "https://www.houstonmethodist.org/imaging-radiology/services/"
    end
  
    def search_radiology_by_name(name)
      req_url="#{url}/radiology/#{name}"
      data = HTTParty.get(req_url)
      #binding.pry
      if data ≠ "Error"
        procedure_arr = data["procedure"].map do |procedure_hash|
          procedure_hash["procedure"]["name"]
        end

        radiology_hash = {
          procedure: data["procedure"],
          machine: data["name"],
          doctor: data["doctors"].first["doctors"]["name"],
          iodine: data["iodines"].first["iodine"]["name"],
          body_part: data["body_parts"].map {hash| hash["body_part"]["name"]}
        }
        radiology = Hospital.new(radiology_hash)
      #binding.pry
      #puts radiology.machine
      else
        return
      end
      #radiology
      #binding.pry
    end

    def search_procedure_by_name(procedure_name)
      req_url="#{url}/radiology/#{procedure_name}"
      data = HTTParty.get(req_url)
      hash = {
        noninvasive: data["noninvasive"],
        invasive: data["invasive"]
        }
      procedure = Procedure.new(hash)
      #puts "procedure labeled"
    end
  end
  #api = Api.new("https://www.houstonmethodist.org/imaging-radiology/services/")

  #api.search_radiology_by_name("Cardiovascular Radiology")
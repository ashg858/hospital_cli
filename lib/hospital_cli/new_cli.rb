class CLI

    def run
      radiology_api = Api.new()
      puts "Pick a type of imaging, please!"
      radiology_api.search_radiology_by_name("Cardiovascular Radiology")
    end
end
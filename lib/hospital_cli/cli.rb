
#HOSPITAL_URL = "https://www.houstonmethodist.org/imaging-radiology/services/"

class Cli

    def run
      imaging_api = Api.new()
      puts "Pick an type of imaging, please!"
      input = gets.chomp
      
    end
end

#HOSPITAL_URL = "https://www.houstonmethodist.org/imaging-radiology/services/"

class Cli

    def run
        puts "Greetings!"
      imaging_api = Api.new()
      input = nil
      while input ≠ "exit"
        puts "Pick a type of imaging, please!"
        input = gets.strip.downcase
        if input ≠ nil && input ≠ "exit" && input ≠ "procedure"
          imaging_api.search_imaging_by_name(input)
        elsif input = "procedure"
          api.search_procedure_by_name(input)
        end
        puts "Goodbye!"
      end
      
      #imaging_api.search_procedure_by_name("noninvasive")

    end
end
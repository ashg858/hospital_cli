
#HOSPITAL_URL = "https://www.houstonmethodist.org/imaging-radiology/services/"

class CLI

    def run
      radiology_api = Api.new()
      input = nil
      while input ≠ "exit"
        puts "Pick a type of imaging, please!"
        input = gets.strip.downcase
        #if input ≠ nil && input ≠ "exit" && input ≠ "procedure"
            #radiology = radiology_api.search_radiology_by_name(input)
      end
        #else input = "procedure"
          #api.search_procedure_by_name(input)
        end
        puts "Greetings!"
    end
      
      #imaging_api.search_procedure_by_name("noninvasive")



    #def run
      #puts "Greetings!"
      #radiology_api = Api.new()
      #input = nil
      #while input ≠ "exit"
        #puts "Pick a type of imaging, please!"
        #input = gets.strip.downcase
        #if input ≠ nil && input ≠ "exit" && input ≠ "procedure"
          #imaging_api.search_radiology_by_name(input)
        #elsif input = "procedure"
          #api.search_procedure_by_name(input)
        #end
        #puts "Goodbye!"
      
      #imaging_api.search_procedure_by_name("noninvasive")

    #end
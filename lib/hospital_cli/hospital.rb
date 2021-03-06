class Hospital
  attr_accessor :doctor, :iodine, :body_part 
  attr_reader :procedure, :machine

  @@all = []

  def initialize(hash)
    hash.each do |k, v|
      self.send("#{k}=", v)
    end
    create_procedure(self.procedure)
    self.save
  end

  def create_procedure(procedure_arr)
    puts "One moment please..."
    api = Api.new
    procedure_objs = procedure_arr.map do |procedure_name|
     api.search_procedure_by_name(procedure_name)
    end
    self.procedure = procedure_objs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  private

  def procedure=(procedure)
    @procedure = procedure
  end

  def machine=(machine)
    @machine = machine
  end
  #binding.pry
end
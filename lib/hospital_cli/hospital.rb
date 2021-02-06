class Hospital
  attr_accessor :doctor, :iodine, :body_part 
  attr_reader :procedure, :machine

  @@all = []

  def initialize(hash)
    hash.each do |k, v|
      #x = "@#{k.to_s} = #{v}"
  end

  @@all << self
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
  binding.pry
end
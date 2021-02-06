class Procedure
    attr_reader :noninvasive, :invasive

    @@all = []

    def initialize(hash)
        hash.each do |k, v|
            self.send("#{k}=", v)
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

    def invasive=(invasive)
      @invasive = invasive
    end

    def noninvasive=(noninvasive)
      @noninvasive = noninvasive
    end
end
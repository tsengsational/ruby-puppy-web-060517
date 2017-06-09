
class Dog

attr_accessor :name

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.clear_all
    @@all.delete_if {|x| x.is_a?(Dog)}
  end

  def self.all
    @@all.each do |dog|
      puts dog.name
    end
  end

end

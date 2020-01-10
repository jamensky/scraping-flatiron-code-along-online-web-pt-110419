
class Course
  attr_accessor :title, :schedule, :description

<<<<<<< HEAD
class Course
  attr_accessor :title, :schedule, :description

  @@all = []

  def initialize
=======
  @@all = []

  def initialize(title, schedule, description)
>>>>>>> 11322881c429b431454b131be49e0dbdcd57cbad
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end


=begin
  def title
  end

  def schedule
  end

  def description
  end
=end

end

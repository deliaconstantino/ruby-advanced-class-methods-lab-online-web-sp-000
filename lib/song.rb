class Song
  attr_accessor :name, :artist_name
  @@all = []

  def create(name)

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end

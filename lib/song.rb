class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.create
    song = self.new
    song.save
    song
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = self.new
    song.name = name
    song.save
    song
  end

  def self.find_by_name(name)
    self.all.find do |song_object|
      song_object.name == name
    end
  end

  def self.find_or_create_by_name(name)
    #iterate through the class array
    #for each check if song is already there--which we did above in fin_by name
      #if so, return song name
      #else create-by_ name which we also did above

    if Song.find_by_name(name) != nil
    
  end


end

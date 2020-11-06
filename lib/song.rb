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
    self.all.find{|song_object| song_object.name == name}
  end

  def self.find_or_create_by_name(name)
    if self.find_by_name(name) == false
      self.create_by_name(name)
    else
      self.find_by_name(name)
    end

end

#why doesn;t this work, looks like bc creates nil (not an object) and can't call .name on nil
  # def self.find_or_create_by_name(name)
  #   if self.find_by_name(name).name == self.create_by_name(name).name
  #     return self.find_by_name(name)
  #   else
  #     self.create_by_name(name)
  #   end
  # end
#other ideas:
# if self.find_by_name(name) ? self.find_by_name(name) : self.create_by_name(name)
# self.create_by_name(name) unless self.find_by_name(name)


end

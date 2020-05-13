require('pry')

class Album
    @@album_count = 0 
   
    def initialize
      @@album_count += 1
    end
   
    def self.count
        binding.pry
      @@album_count
    end
  end

  #a1 = Album.new
  Album.count
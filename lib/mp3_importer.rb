require 'pry'
class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files ||= Dir["#{path}/*mp3"]
    # .collect {|file| file.gsub("#{path}/","")}
  end

  def import
    files.each{ |filename| Song.new_by_filename(filename) }
  end
end

# ["./spec/fixtures/mp3s/Real Estate - Green Aisles - country.mp3",
# "./spec/fixtures/mp3s/Real Estate - It's Real - hip-hop.mp3",
# "./spec/fixtures/mp3s/Action Bronson - Larry Csonka - indie.mp3",
# "./spec/fixtures/mp3s/Thundercat - For Love I Come - dance.mp3"]

# ["Real Estate - Green Aisles - country.mp3",
# "Real Estate - It's Real - hip-hop.mp3",
# "Action Bronson - Larry Csonka - indie.mp3",
# "Thundercat - For Love I Come - dance.mp3"]

module Floccus
  class Filename
    # Generate a hashed filename based on the contents
    #
    # Returns the hash followed by the filename
    def self.generate(filename)
      file_path = File.expand_path(filename)
      contents = File.read(file_path)
      hash = Digest::MD5.hexdigest(contents)
         
      "#{hash}-#{filename}"
    end
  end
end
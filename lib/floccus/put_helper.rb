module Floccus
  class PutHelper

    KB = 1024

    # Setup
    #
    def initialize(*args)
      @filename = args[0]
      @hashed_filename = Floccus::Filename.generate(@filename)
      @cloud = Floccus::Cloud.new
      @s3 = @cloud.s3
    end

    # Run the full command
    #
    def run
      file = open(@filename)

      # Instantiate a Progress Bar
      total_blocks = (file.size / KB).to_i  + 2
      progressbar = ProgressBar.create total: total_blocks

      object = @s3.buckets[@cloud.default_bucket].objects[@hashed_filename]

      object.write(content_length: file.size, acl: :public_read) do |buffer, bytes|
        buffer.write(file.read(bytes))
        
        progressbar.increment
      end

      file.close

      system "echo #{object.public_url } | pbcopy"
      puts "---> #{object.public_url}"
    end
  end
end
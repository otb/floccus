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

      # Create the object
      object = @s3.buckets[@cloud.bucket].objects[@hashed_filename]

      # Write the file
      object.write(content_length: file.size, acl: :public_read) do |buffer, bytes|
        buffer.write(file.read(bytes))
        
        progressbar.increment
      end

      file.close

      public_url = if @cloud.use_domain?
                     obj = object.public_url
                     obj.scheme = "http"
                     obj.host = @cloud.domain
                     obj.path = obj.path.gsub("/#{@cloud.bucket}", "")
                     obj
                   else
                     object.public_url
                   end

      # Echo the results
      system "echo #{public_url} | pbcopy"
      puts "---> #{public_url}"
    end
  end
end
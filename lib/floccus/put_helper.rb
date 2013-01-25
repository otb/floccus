class PutHelper
  
  SLASH = "/"

  # Setup
  #
  def initialize
    @filename = ARGV[1]
    @s3_url = ARGV[2]
    @options = ARGV[3..-2]
    @use_local_filename = @s3_url[-1] == SLASH
  end

  # Generate a hashed filename based on the contents
  #
  # Returns the hash followed by the filename
  def hashed_filename(upload_filename)
    file_path = File.expand_path(@filename)
    contents = File.read(file_path)
    hash = Digest::MD5.hexdigest(contents)
       
    "#{hash}-#{upload_filename}"
  end

  # Return a new S3 URL with the hashed filename
  #
  # Support URLs that teriminate in slashes or filenames
  def hashed_s3_url
    if @use_local_filename
      upload_filename = @filename.split(SLASH).last

      "#{@s3_url}#{hashed_filename(upload_filename)}"
    else
      upload_filename = @s3_url.split(SLASH).last

      @s3_url.sub(upload_filename, hashed_filename(upload_filename))
    end
  end

  # Return the full command
  #
  def run!
    system "s3cmd put #{@filename} #{hashed_s3_url} #{@options.join(" ")}"
  end
end
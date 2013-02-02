module Floccus
  class Cloud

    CONFIG_PATH = "#{ENV['HOME']}/.flocrc"

    def initialize(config={})
      config = YAML.load(File.read(CONFIG_PATH))

      AWS.config(
        :access_key_id     => config["access_key_id"], 
        :secret_access_key => config["secret_access_key"]
      )
      @default_bucket = config["default_bucket"]

      @s3 = AWS::S3.new
    end

    def default_bucket
      @default_bucket
    end

    def s3
      @s3
    end
  end
end
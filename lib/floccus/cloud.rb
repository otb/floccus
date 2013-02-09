module Floccus
  class Cloud

    CONFIG_PATH = "#{ENV['HOME']}/.floccfg"

    def initialize
      config = YAML.load(File.read(CONFIG_PATH)) if File.exist? CONFIG_PATH

      raise "No valid config file found in #{CONFIG_PATH}" unless config

      AWS.config(
        :access_key_id     => config["access_key_id"], 
        :secret_access_key => config["secret_access_key"]
      )
      @default_bucket = config["default_bucket"]
      @domain = config["domain"]

      @s3 = AWS::S3.new
    end

    def bucket
      @default_bucket
    end

    def s3
      @s3
    end

    def use_domain?
      @domain
    end

    def domain
      @domain
    end
  end
end
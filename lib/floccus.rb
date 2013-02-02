require 'commander/import'
require 'aws-sdk'
require 'digest/md5'
require 'ruby-progressbar'
require 'floccus/filename'
require 'floccus/cloud'
require 'floccus/put_helper'
require 'floccus/commands'

module Floccus
  VERSION = "0.0.1"
end
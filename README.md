# Floccus

![alt text](http://upload.wikimedia.org/wikipedia/commons/e/e3/Clouds_H2.svg "Floccus")

A sane and tidy way to manage files in the cloud.

Floccus prefixes filenames with a unique hash based on the contents of the file, then drops them at your cloud root where they're publicly accessible.

This removes the need to keep track of filenames, paths, or concerns if a certain file is actually in your cloud but not readily discoverable.  Since the hashing mechanism is standard, it's easy to query the cloud for an existing file, even if named differently, if you have a local copy.

## Installation

    $ gem install floccus

## Setup

Create the file ```~/.floccfg``` with your AWS keys and default bucket.

	# Floccfg
	access_key_id: 'aws-key'            # required, your AWS Access ID
	secret_access_key: 'aws-secret'     # required, your AWS Secret Key
	default_bucket: 'default-bucket'    # required, the bucket to place files in
	domain: 'cdn.my-cloud.com'          # optional, returns the file hosted at this domain root, instead of S3

## Usage

### CLI

	floc image.jpg
	-> public URL: http://cdn.my-cloud.com/24894781b632f6b3e805dae60e2d8c46-image.jpg

The public URL is also copied to your clipboard.

## Roadmap

* Tests, Documentation
* Usage as a library for applications
* Expose an `ls` feature for checking for an existing file
* Installation with setup for .floccfg
* Multiple cloud backends (right now only S3 is supported)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## About

'Floccus' is a type of cirrus cloud that resembles the pattern above: http://en.wikipedia.org/wiki/Cirrus_floccus.  It's a cloud that rises high in the atmosphere, hence the high level API.

## License

MIT License

Copyright (C) 2013 Owen Bossola, http://owenbossola.com

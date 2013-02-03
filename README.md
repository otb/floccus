# Floccus

![alt text](http://upload.wikimedia.org/wikipedia/commons/e/e3/Clouds_H2.svg "Floccus")

A sane and tidy way to manage files in the cloud.

'Floccus' is a type of cirrus cloud that resembles the pattern above: http://en.wikipedia.org/wiki/Cirrus_floccus


## Roadmap

* Setup command for .flocrc - a config file for S3 credentials and default bucket.
* Domain aliases instead of default from S3
* Multiple cloud backends (right now only supports S3)


## Installation

    $ gem install floccus

## Setup

Create the file ```~/.flocrc``` with your AWS keys and default bucket.

```
# Flocrc
access_key_id: 'aws-key'
secret_access_key: 'aws-secret'
default_bucket: 'default-bucket'
```

## Usage

	floc image.jpg
	-> public URL: http://your-cloud.com/24894781b632f6b3e805dae60e2d8c46-image.jpg

And the public URL is also copied to your clipboard.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

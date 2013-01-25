# Floccus

![alt text](http://upload.wikimedia.org/wikipedia/commons/e/e3/Clouds_H2.svg "Floccus")

A sane and tidy way to manage files in the cloud.

'Floccus' is a type of cirrus cloud that resembles the pattern above: http://en.wikipedia.org/wiki/Cirrus_floccus


## Roadmap

* .flocrc - a config file for your Clouds.  Will also support environement variables.
* Multiple cloud backends (right now it only crudely supports 's3cmd')


## Installation

    $ gem install floccus

## Usage

	floc image.jpg
	-> public URL: http://your-cloud.com/24894781b632f6b3e805dae60e2d8c46-image.jpg

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

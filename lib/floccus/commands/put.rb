command :put do |c|
  c.syntax = 'floc put'
  c.summary = 'Put a file to the cloud.'
  c.description = ''

  c.action do
    PutHelper.new(*ARGV).run!
end
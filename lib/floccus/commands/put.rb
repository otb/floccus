command :put do |c|
  c.syntax = 'floccus put'
  c.summary = 'Put a file to the cloud.'
  c.description = ''

  c.action do
    PutHelper.new.run!
  end
end
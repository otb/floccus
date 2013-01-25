command :push do |c|
  c.syntax = 'floccus push'
  c.summary = 'Push a file to the cloud.'
  c.description = ''

  c.action do
    PushHelper.new.run!
  end
end
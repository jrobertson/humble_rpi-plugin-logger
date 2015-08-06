Gem::Specification.new do |s|
  s.name = 'humble_rpi-plugin-logger'
  s.version = '0.1.0'
  s.summary = 'A Humble RPi plugin which listens and logs the messages sent to plugins from within the HumbleRPi gem.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/humble_rpi-plugin-logger.rb']
  s.signing_key = '../privatekeys/humble_rpi-plugin-logger.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/humble_rpi-plugin-logger'
end

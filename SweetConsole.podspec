Pod::Spec.new do |spec|
  spec.name = 'SweetConsole'
  spec.version = '1.0'
  spec.license = 'MIT'
  spec.summary = 'A Swift`s println function alternative to log values in console like a boss!'
  spec.homepage = 'https://github.com/jancassio/SweetConsole'
  spec.social_media_url ='http://www.twitter.com/jancassio'
  spec.authors = { 'Jan Cassio' => 'hey@jancassio.com' }
  spec.source = { :git => 'https://github.com/jancassio/SweetConsole.git', :tag => spec.version }

  spec.ios.deployment_target = '8.0'
  spec.osx.deployment_target = '10.10'

  spec.source_files = "Console.swift"

  spec.requires_arc = true

end

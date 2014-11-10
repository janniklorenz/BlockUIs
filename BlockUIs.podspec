Pod::Spec.new do |spec|
  spec.name         = 'BlockUIs'
  spec.version      = '1.0'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'http://www.janniklorenz.de'
  spec.authors      = { 'Jannik Lorenz' => 'dev@janniklorenz.de' }
  spec.summary      = 'Subclass Basic UI Elements with Objective C Blocks'
  spec.source       = { :git => 'https://github.com/janniklorenz/BlockUIs', :tag => 'v1.0' }
  spec.source_files = '*.{h,m}'
  spec.framework    = 'SystemConfiguration'
end

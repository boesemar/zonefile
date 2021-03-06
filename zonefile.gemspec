require 'rubygems'

SPEC = Gem::Specification.new do |s|

 s.name         = 'zonefile'
 s.version      = '1.07'
 s.author       = 'Martin Boese'
 s.email        = 'martin.boese@ita.ao'
 s.rubyforge_project = 'zonefile'
 s.homepage     = 'https://github.com/boesemar/zonefile'
 s.license      = 'MIT'
 s.platform     = Gem::Platform::RUBY
 s.summary      = 'BIND Zonefile Reader and Writer'
 s.description  = "A library that can create, read, write, modify BIND compatible Zonefiles (RFC1035).\n"+
                  "Warning: It probably works for most cases, but it might not be able to read all files \n"+
                  "even if they are valid for bind."
 candidates     = Dir.glob("{lib,tests}/**/*") << "CHANGELOG"
 s.files        = candidates.delete_if { |item|item.include?("~") }
 s.require_path = 'lib'
 s.has_rdoc 	= true
end

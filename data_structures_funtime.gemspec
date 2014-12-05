lib = File.expand_path('../lib/',__FILE__)
$:.unshift lib unless $:.include?(lib)

require 'data_structures_funtime/version'

Gem::Specification.new do |s|
  s.name = 'data_structures_funtime'
  s.version = DataStructuresFuntime::VERSION
  s.summary = 'Useful data structures built by asteve'
  s.author = "Steve Annessa"
  s.email = "steve.annessa@gmail.com"
  s.require_paths = ['lib']
  s.files = `git ls-files`.split($/)
end

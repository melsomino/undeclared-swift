Pod::Spec.new do |s|
	s.name = 'UnDeclared'
  s.version = '1.0.0'
  s.author = { 'Michael Vlasov' => 'melsomino@gmail.com' }
  s.homepage = 'https://github.com/melsomino/undeclared-swift'
  s.summary = 'Unified Declaration Language Parser and Stringifier'
  s.license = 'MIT'
  s.source = { :git => 'https://github.com/melsomino/undeclared-swift.git', :tag => s.version.to_s }
  s.source_files = 'UnDeclared'
  s.platform = :ios
  s.ios.deployment_target = '8.4'
  s.requires_arc = true
end
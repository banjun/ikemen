Pod::Spec.new do |s|
  s.name             = "※ikemen"
  s.version          = "0.3.1"
  s.module_name      = "Ikemen"
  s.summary          = "Swift way of Ruby Object#tap"

  s.description      = <<-DESC
  Swift way of Ruby Object#tap. for example:
  
  let nameLabel = UILabel() ※ {$0.text = "Name"}
                       DESC

  s.homepage         = "https://github.com/banjun/ikemen"
  s.license          = 'MIT'
  s.author           = { "banjun" => "banjun@gmail.com" }
  s.source           = { :git => "https://github.com/banjun/ikemen.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/banjun'

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.11'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
end

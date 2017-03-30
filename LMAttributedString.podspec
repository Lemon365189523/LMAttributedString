


Pod::Spec.new do |s|



  s.name         = "LMAttributedString"
  s.version      = "0.0.3"
  s.summary      = "一个函数式的富文本库"
  s.description  = <<-DESC
                      this project provide all kinds of categories for iOS developer 

                      DESC
  s.homepage     = "https://github.com/Lemon365189523/LMAttributedString"

  s.license= { :type => "MIT", :file => "LICENSE" }

  s.platform     = :ios

  s.author             = { "KADFWJ" => "930135305@qq.com" }

  s.source       = { :git => "https://github.com/Lemon365189523/LMAttributedString.git", :tag => "0.0.3" }

  s.source_files  = "Classes","LMAttributedString/Classes/*.{h,m}"

  s.requires_arc = true
  s.ios.deployment_target = '7.0'
end

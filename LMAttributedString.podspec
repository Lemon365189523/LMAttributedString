


Pod::Spec.new do |s|



  s.name         = "LMAttributedString"
  s.version      = "0.0.1"
  s.summary      = "A short description of LMAttributedString."


  s.description  = <<-DESC
                   DESC

  s.homepage     = "https://github.com/Lemon365189523/LMAttributedString"


  s.license      = "MIT (example)"


  s.author             = { "KADFWJ" => "930135305@qq.com" }

  s.source       = { :git => "https://github.com/Lemon365189523/LMAttributedString", :tag => "0.0.1" }

  s.source_files  = "Classes", "LMAttributedString/Classes/**/*.{h,m}"

  s.exclude_files = "Classes/Exclude"

  s.public_header_files = "LMAttributedString/Classes/UIKit/UI_Categories.h"，"LMAttributedString/Classes/Foundation/Foundation_Category.h"，"LMAttributedString/Classes/**/*.h"
  
  s.requires_arc = true

end

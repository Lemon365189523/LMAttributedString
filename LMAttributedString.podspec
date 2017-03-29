


Pod::Spec.new do |s|



  s.name         = "LMAttributedString"
  s.version      = "0.0.1"
  s.summary      = " The summary is can meaningful."
  s.description  = <<-DESC
                      this project provide all kinds of categories for iOS developer 

                      DESC
  s.homepage     = "https://github.com/Lemon365189523/LMAttributedString"

  s.license      = { :type => 'Apache License, Version 2.0', :text => <<-LICENSE
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at
http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
LICENSE
}

  s.platform     = :ios

  s.author             = { "KADFWJ" => "930135305@qq.com" }

  s.source       = { :git => "https://github.com/Lemon365189523/LMAttributedString.git", :tag => "0.0.1" }

  s.source_files  = "Classes","LMAttributedString/Classes/*.{h,m}"

  s.requires_arc = true
  s.ios.deployment_target = '7.0'
end

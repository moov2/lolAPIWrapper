#
# Created at Moov2
#

Pod::Spec.new do |s|
s.name             = "lolAPIWrapper"
s.version          = "1.1.3"
s.summary          = "A swift wrapper around League of Legends (LOL) API."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!
s.description      = %{
lolAPIWrapper is a light-weight wrapper around League of Legends (LOL) API.
Developed in swift to make it easy for iOS developers develop application using LOL API.
}

s.homepage         = "https://github.com/moov2/lolAPIWrapper"
s.license          = 'MIT'
s.author           = { "Moov2" => "mobin@moov2.com" }
s.source           = { :git => "https://github.com/moov2/lolAPIWrapper.git", :tag => "v#{s.version}" }

s.platform     = :ios, '8.0'
s.requires_arc = true

s.source_files = 'Pod/Classes/**/*'
s.frameworks = 'UIKit'
end

Pod::Spec.new do |s|
  s.name         = "swift-http-structured-headers"
  s.version      = "0.1.0"
  s.summary      = "Structured Field Values Swift Library"
  s.description  = <<-DESC
    SFV library support fork from https://github.com/apple/swift-http-structured-headers
  DESC
  s.homepage     = "https://approov.io"
  s.license      = { :type => "Apache 2.0", :file => "LICENSE.txt" }
  s.authors      = { "Approov, Ltd." => "support@approov.io" }
  s.source       = { :git => "https://github.com/approov/swift-http-structured-headers.git", :tag => s.version }
  s.swift_version = "5.10"
  s.ios.deployment_target = "11.0"
  s.watchos.deployment_target = "9.0"

  s.source_files = "Sources/RawStructuredFieldValues/**/*.swift"
  s.exclude_files = "Sources/RawStructuredFieldValues/Docs.docc"
  s.module_name = 'RawStructuredFieldValues'
  s.header_mappings_dir = 'Sources/RawStructuredFieldValues'
end

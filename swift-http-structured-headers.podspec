Pod::Spec.new do |s|
  s.name         = "swift-http-structured-headers"
  s.version      = "0.1.0"
  s.summary      = "Apple SFV"
  s.description  = <<-DESC
    SFV library support
  DESC
  s.homepage     = "https://approov.io"
  s.license      = { :type => "Apache 2.0", :file => "LICENSE.txt" }
  s.authors      = { "Approov, Ltd." => "support@approov.io" }
  s.source       = { :git => "https://github.com/approov/swift-http-structured-headers.git", :tag => s.version }
  s.swift_version = "5.10"
  s.ios.deployment_target = "13.0"
  s.source_files  = "Sources/StructuredFieldValues/**/*.swift", "Sources/RawStructuredFieldValues/**/*.swift"
  s.exclude_files = "Sources/*/Docs.docc"
end

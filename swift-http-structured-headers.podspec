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
  s.ios.deployment_target = "12.0"
  s.watchos.deployment_target = "9.0"

  s.subspec 'RawStructuredFieldValues' do |raw|
    raw.source_files = "Sources/RawStructuredFieldValues/**/*.swift"
    raw.exclude_files = "Sources/RawStructuredFieldValues/Docs.docc"
    raw.module_name = 'RawStructuredFieldValues'
    raw.header_mappings_dir = 'Sources/RawStructuredFieldValues'
  end

  s.subspec 'StructuredFieldValues' do |sfv|
    sfv.source_files = "Sources/StructuredFieldValues/**/*.swift"
    sfv.exclude_files = "Sources/StructuredFieldValues/Docs.docc"
    sfv.dependency 'swift-http-structured-headers/RawStructuredFieldValues'
    sfv.module_name = 'StructuredFieldValues'
    sfv.header_mappings_dir = 'Sources/StructuredFieldValues'
  end
end

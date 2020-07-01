# frozen_string_literal: true

Pod::Spec.new do |s|
  s.name = 'D'
  s.version = '1.0.0.LOCAL'

  s.authors = %w[Square]
  s.homepage = 'https://github.com/Square/cocoapods-generate'
  s.source = { git: 'https://github.com/Square/cocoapods-generate' }
  s.summary = 'Testing pod'

  s.swift_versions = %w[5.2]
  s.ios.deployment_target = '10.0'

  s.source_files = 'Sources/**/*.{h,m,swift}'
  s.private_header_files = 'Sources/Internal/**/*.h'

  s.dependency 'A'
  s.dependency 'C'
  s.dependency 'Public'

  s.test_spec 'Tests' do |ts|
    ts.source_files = 'Tests/**/*.{h,m,swift}'

    ts.dependency 'E'
  end

  s.app_spec 'App' do |as|
    as.source_files = 'App/**/*.{h,m,swift}'
  end
end

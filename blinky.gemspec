# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{blinky}
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Perryn Fowler"]
  s.date = %q{2011-06-15}
  s.description = %q{plug and play support for USB build status indicators}
  s.email = %q{perryn.fowler@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "LICENSE",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "blinky.gemspec",
    "lib/blinky.rb",
    "lib/blinky/light.rb",
    "lib/blinky/light_factory.rb",
    "lib/blinky/no_supported_devices_found.rb",
    "lib/ci_server_plugins/test_server_plugin.rb",
    "lib/device_recipes/delcom_engineering/visual_indicator_gen_one.rb",
    "lib/device_recipes/delcom_engineering/visual_indicator_gen_two.rb",
    "lib/plugins.rb",
    "lib/recipes.rb",
    "notes.txt",
    "spec/acceptance_spec.rb",
    "spec/blinky_spec.rb",
    "spec/ci_server_plugins/test_server_plugin_spec.rb",
    "spec/fixtures/ci_server_plugins/mock_ci_server.rb",
    "spec/fixtures/device_recipes/aenima_engineering/model_462.rb",
    "spec/fixtures/device_recipes/aenima_engineering/model_eulogy.rb",
    "spec/fixtures/device_recipes/fragile_engineering/wretched.rb",
    "spec/fixtures/plugins.rb",
    "spec/fixtures/recipes.rb",
    "spec/light_factory_spec.rb",
    "spec/light_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/perryn/blinky}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{helps you see the light}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<libusb>, ["~> 0.2.0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.11.0"])
    else
      s.add_dependency(%q<libusb>, ["~> 0.2.0"])
      s.add_dependency(%q<rspec>, ["~> 2.11.0"])
    end
  else
    s.add_dependency(%q<libusb>, ["~> 0.2.0"])
    s.add_dependency(%q<rspec>, ["~> 2.11.0"])
  end
end


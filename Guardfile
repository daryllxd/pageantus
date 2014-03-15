#!/usr/bin/env ruby

guard :bundler do
  watch('Gemfile')
end

guard :rails, port: 5000 do
  watch('Gemfile.lock')
  watch(%r{^(config|lib)/.*})
end

guard :rspec, cli: '--drb', all_after_pass: true  do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')  { "spec" }

  # Rails example
  watch(%r{^app/(.+)\.rb$})                           { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^app/(.*)(\.haml|\.slim)$})          { |m| "spec/#{m[1]}#{m[2]}_spec.rb" }
  watch(%r{^app/controllers/(.+)_(controller)\.rb$})  { |m| ["spec/routing/#{m[1]}_routing_spec.rb", "spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb", "spec/acceptance/#{m[1]}_spec.rb"] }
  watch(%r{^app/models/(.+)\.rb$})                    { |m| "spec/models/#{m[1]}_spec.rb"}
  watch(%r{^spec/features/(.+)_spec\.rb$})            { |m| "spec/features/#{m[1]}_spec.rb"}
  watch(%r{^spec/models/(.+)_spec\.rb$})              { |m| "spec/models/#{m[1]}_spec.rb"}
  watch(%r{^spec/support/(.+)\.rb$})                  { "spec" }
  watch('config/routes.rb')                           { "spec/routing" }
  watch('app/controllers/application_controller.rb')  { "spec/controllers" }

  # Capybara features specs
  watch(%r{^app/views/(.+)/.*\.(haml|slim)$})     { |m| "spec/features/#{m[1]}_spec.rb" }

end

guard 'spork', rspec_env: { 'RAILS_ENV' => 'test' } do
  watch('config/application.rb')
  watch('config/environment.rb')
  watch('config/environments/test.rb')
  watch(%r{^config/initializers/.+\.rb$})
  watch('spec/factories.rb') { :rspec }
  watch('Gemfile.lock')
  watch('spec/spec_helper.rb')
  watch('spec/spec_helper.rb') { :rspec }
  watch(%r{support/}) { :rspec }  
end

guard 'shell' do
  watch('db/schema.rb') { `annotate --position after` }
end

require 'rails/generators'

class FooGenerator < Rails::Generators::Base
  def self.source_root
    @_foo_source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'templates'))
  end

  def install
    copy_file('foo.rb', 'lib/foo.rb')         # copy foo.rb to lib/
    copy_file('bar.rb', 'app/models/bar.rb')  # copy bar.rb to app/models/
  end
end

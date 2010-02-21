require 'rails/generators'

class FooGenerator < Rails::Generators::Base
  def self.source_root
    @_foo_source_root ||=
      File.expand_path(File.join(File.dirname(__FILE__), 'templates'))
  end

  def install
    copy_file(
      'foo'
    )
  end
end

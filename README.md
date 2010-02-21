Sample of Rails3 generator
======

Usage
------

    rails generate foo

Structure
------

    rails3_generator_sample
    |-- README.md
    |-- init.rb
    `-- lib
        `-- generators                # directory of generators
            `-- foo                   # directory of "foo generator"
                |-- foo_generator.rb  # script of "foo generator"
                `-- templates         # directory of templates (specified as "source_root" in foo_generator.rb)
                    `-- foo.rb
                    `-- bar.rb

Code
------

**lib/generators/foo/foo_generator.rb**

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

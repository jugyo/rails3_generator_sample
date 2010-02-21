Sample of rails3 generator
======

    rails3_generator_sample
    |-- README.md
    |-- init.rb
    `-- lib
        `-- generators                # directory of generators
            `-- foo                   # directory of "foo generator"
                |-- foo_generator.rb  # script of "foo generator"
                `-- templates         # directory of templates (specified as "source_root" in foo_generator.rb)
                    `-- foo           # foo!

Deface::Override.new(:virtual_path => %q{spree/shared/_head},
                          :name => %q{add_to_head},
                          :insert_after => %q{code[erb-loud]:contains('stylesheet_link_tag')},
                          :text => %q{<%= stylesheet_link_tag 'dd' %><%= javascript_include_tag 'jquery.dd.js' %>})

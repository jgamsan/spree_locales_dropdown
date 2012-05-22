Deface::Override.new(:virtual_path => %q{spree/products/index},
                     :name => %q{add_to_sidebar},
                     :insert_before => %q{[data-hook='homepage_sidebar_navigation']},
                     :text => %q{<%= render 'shared/locales_dropdown' %>})

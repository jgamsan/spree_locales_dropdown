Deface::Override.new(:virtual_path => %q{spree/shared/_search},
                     :name => %q{add_to_sidebar},
                     :insert_after => %q{[#search-bar]},
                     :text => %q{<%= render 'shared/locales_dropdown' %>})

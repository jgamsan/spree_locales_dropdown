Deface::Override.new(:virtual_path => %q{spree/shared/_search},
                     :name => %q{add_to_sidebar},
                     :insert_after => %q{<li id="search-bar" data-hook>},
                     :text => %q{<%= render 'shared/locales_dropdown' %>})

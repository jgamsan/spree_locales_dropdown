Deface::Override.new(:virtual_path => %q{spree/shared/_search},
                     :name => %q{add_to_sidebar},
                     :replace => %q{#search-bar},
                     :text => %q{<li id="search-bar" data-hook>
  <%= render 'shared/locales_dropdown' %>                   
  <%= render :partial => 'spree/shared/search' %>
</li>})

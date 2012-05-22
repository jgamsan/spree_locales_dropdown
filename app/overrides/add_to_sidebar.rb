Deface::Override.new(:virtual_path => %q{spree/products/index},
                     :name => %q{add_to_sidebar},
                     :replace => %q{[data-hook='homepage_sidebar_navigation']},
                     :text => %q{<%= render 'shared/locales_dropdown' %><% if "products" == @current_controller && @taxon %>
      <%= render :partial => 'spree/shared/filters' %>
    <% else %>
      <%= render :partial => 'spree/shared/taxonomies' %>
    <% end %>})

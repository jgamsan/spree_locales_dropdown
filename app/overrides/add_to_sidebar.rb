Deface::Override.new(:virtual_path => %q{spree/products/index},
                     :name => %q{add_to_sidebar},
                     :replace => %q{[data-hook='homepage_sidebar_navigation']},
                     :text => %q{
   <div data-hook="locales-show">
  <select onChange="changeLocale(this.value);" name="locales_dropdown" id="locales_dropdown">
      <% get_locales.each do |locale| %>
          <option title='/images/flags/<%= flag_image(locale[0]) %>' <%= 'selected=selected' if I18n.locale == locale[0].to_sym %> value="<%= "/locale/set?locale=#{locale[0]}" %>"><%= "#{locale[1]}" %></option>
      <% end %>
  </select>

  <script language="javascript">

      function changeLocale(arg) {
          document.location = arg;
      }

      $(document).ready(function(e) {
          try {
              $("#locales_dropdown").msDropDown();
          } catch(e) {
              alert(e.message);
          }
      });
  </script>
</div>
                  
   <% if "products" == @current_controller && @taxon %>
      <%= render :partial => 'spree/shared/filters' %>
    <% else %>
      <%= render :partial => 'spree/shared/taxonomies' %>
    <% end %>})

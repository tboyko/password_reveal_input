class PasswordRevealInput < SimpleForm::Inputs::PasswordInput

  def input
    input_html_options[:value] = object.send(attribute_name)

    input = @builder.password_field(attribute_name, input_html_options)
    link  = %{ <a id="#{input_class}_reveal" href="#">reveal</a>}.html_safe
    js    = %{
      <script>
        $('a##{input_class}_reveal').click(function() {
          var input = $('##{input_class}');
          
          if (input.attr('type') == 'password') {
            input.attr('type', 'text');
            $(this).text('hide');
          } else {
            input.attr('type', 'password');
            $(this).text('reveal');
          }

          return false;
        });
      </script>
    }.html_safe
    
    input + link + js
  end

end
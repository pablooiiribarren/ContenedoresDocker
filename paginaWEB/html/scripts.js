

$(document).ready(function() {
    // Capturar el evento de escribir en la barra de búsqueda
    $('#buscador').on('keyup', function() {
        var texto = $(this).val().toLowerCase();// Convertir el texto a minúsculas
        var encontrado = false;

        $('.error-message').hide();

        if (texto === "proyecto 1") {
            $('html, body').animate({
                scrollTop: $('#proyecto1').offset().top
            }, 500);
            encontrado = true;
        } else if (texto === "proyecto 2") {
            $('html, body').animate({
                scrollTop: $('#proyecto2').offset().top
            }, 500);
            encontrado = true;
        } else if (texto === "proyecto 3") {
            $('html, body').animate({
                scrollTop: $('#proyecto3').offset().top
            }, 500);
            encontrado = true;
        }

        // Mostrar mensaje si no se encontró ningún proyecto
        if (!encontrado && texto.length > 0) {
            $('.error-message').fadeIn(); // Mostrar el mensaje
        }
    });
});
    

$(document).ready(function() {
  $('#contactForm').on('submit', function(event) {
      event.preventDefault(); // Evitar el envío del formulario

      // Validar el correo electrónico
      var email = $('#email').val();
      var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/; // Expresión regular para validar el correo
      var mensaje = $('#mensaje').val()

      if (emailRegex.test(email) && mensaje) {
          // Si el correo es válido, mostrar el modal
            $('#modalConfirmacion').modal('show');
            $('#contactForm')[0].reset();
          // Resetear el formulario
          $('#contactForm')[0].reset();
      } else {
          alert('Por favor, introduce un correo electrónico y mensaje válidos.');
      }
  });
});

$(document).ready(function () {
  $('.card-container').hover(function () {
    $(this).find('.card-flip').toggleClass('flip');
  });
});

// buscar palabra en texto
$(document).ready(function() {
    // Función para eliminar el resaltado previo
    function removeHighlight() {
        $('span.bg-warning').each(function() {
            $(this).replaceWith($(this).text());
        });
    }

    $('#buscador').on('input', function() {
        // Eliminar cualquier resaltado previo
        removeHighlight();

        let searchText = $(this).val().toLowerCase().trim();
        if (searchText) {
            // Recorrer cada elemento de texto en la página que sea p, h, o div
            $('p, h1, h2, h3, h4, h5, h6').each(function() {
                let element = $(this);
                let content = element.text();

                // Verificar si el contenido contiene el texto de búsqueda
                if (content.toLowerCase().includes(searchText)) {
                    // Dividir el texto en partes para insertar el resaltado
                    let highlightedText = content.replace(new RegExp(`(${searchText})`, 'gi'), '<span class="bg-warning">$1</span>');
                    element.html(highlightedText);
                }
            });
        }
    });
});

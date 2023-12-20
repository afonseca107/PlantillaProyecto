
$(document).ready(function () {

    $("#txtpwd").keypress(function (e) {
        if (e.which == 13) {
            e.preventDefault();
            IniciarSesion();
        }
    });

});


$('#btnLogin').on('click', function (e) {
    e.preventDefault();
    IniciarSesion();
});

function IniciarSesion() {
    var user = $('#txtuser').val();
    var pwd = $('#txtpwd').val();

    if (user !== "" && pwd !== "") {
        $.ajax({
            url: 'WS/WsMantenimiento.asmx/Login',
            type: "POST",
            data: "{'user':'" + user + "','pwd':'" + pwd + "'}",
            dataType: "json",
            contentType: 'application/json; charset=utf-8',
            success: function (data) {
                var str = data.d;
                if (str != null) {
                    var Mensaje = str;

                    if (Mensaje != "ERROR_CREDENCIALES") {

                        if (Mensaje != "ERROR_SESION") {

                            Cookies.set('user', str);

                            Swal.fire({
                                icon: 'success',
                                title: 'Bienvenido ' + str,
                                showConfirmButton: false,
                                timer: 1500,
                                willClose: () => {
                                    $(location).attr('href', 'default.aspx');
                                }
                            });
                        }
                        else {
                            Swal.fire({
                                title: 'Error',
                                text: 'No se pudo iniciar sesion, comunicate al CSI',
                                icon: "warning"
                            });
                        }

                    } else {
                        Swal.fire({
                            title: 'Error de inicio de sesion',
                            text: 'Usuario y/o Contraseña incorrectos',
                            icon: "warning"
                        });
                    }

                } else {
                    Swal.fire({
                        title: 'No se encontró el usuario',
                        text: 'Revisa tu correo o contraseña, si no estas registrado da clic en el siguiente enlace para registrarte',
                        footer: '<a href="#anfwel">Registrate</a>',
                        icon: "warning"
                    });
                }

            },
            error: function (xhr, ajaxOptions, thrownError) {
                //Swal.fire('Error al consultar', 'No se realizaron cambios', 'error');
                Swal.fire(xhr.responseText, xhr.responseJSON, 'error');
            }
        });
    }
    else {
        Swal.fire({
            title: 'Validar campos',
            text: 'Ningun campo debe quedar en blanco',
            icon: "info"
        });
    }


}


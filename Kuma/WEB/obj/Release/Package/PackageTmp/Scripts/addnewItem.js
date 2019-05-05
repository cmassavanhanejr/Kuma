var getParameterByName = function (name, url) {

    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, "\\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
}
var datePickerHandler = function () {
    $('.datepicker').datepicker({
        autoclose: true,
        todayHighlight: true
    });
    $('.format-datepicker').datepicker({
        format: "MM, dd yyyy",
        todayHighlight: true
    });

};
$(function () {

    if (getParameterByName("ty") == 0) {
        $("#lost").show();
    } if (getParameterByName("ty") == 1) {
        $("#found").show();
    }

});
$('.btnnewItem').click(function (e) {


    var typeItem = $('.typeItem :selected').text();
    var locationItem = $('.locationItem :selected').val();
    var dateLost = $('.dateLost').val();
    var firtname = $('.firtname').val();
    var lastname = $('.lastname').val();
    var email = $('.email').val();
    var contact = $('.contact').val();
    var outrosDetalhesLost = $('.outrosDetalhesLost').val();
    var id = $(this).attr('itemid');
    if (dateLost && firtname && lastname != '0' && outrosDetalhesLost) {
        swal('Processando... por favor aguarde');
        swal.showLoading();
        var parameter = {
            'id':id,'typeItem': typeItem, 'locationItem': locationItem, 'date': dateLost, 'firtname': firtname, 'lastname': lastname, 'email': email, 'contact': contact, 'outrosDetalhesLost': outrosDetalhesLost          
        };

        ajaxRequestAsync('Services.aspx/addNewItem', parameter, function (data) {
            if (data.d == '1') {
                //var file = $("#file").val();
                //if (file) {
                //    uploadFile(function (data) {

                //    });
                //}
                //console.log('sucesso');
                //$('#collapseOne').removeClass('in');
                //$('#getMembrosContainer').empty();
                //getMembros();
                swal.closeModal();

                swal({
                    title: 'Sucesso',
                    text: "Deseja Cadastrar outro artigo",
                    type: 'success',
                    showCancelButton: true,
                    confirmButtonColor: '#007AFF',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'SIM',
                    cancelButtonText: 'NÃO',
                    confirmButtonClass: 'btn btn-primary',
                    cancelButtonClass: 'btn btn-danger',
                    buttonsStyling: false
                }).then(function () {

                    location.reload();
                }, function (dismiss) {
                    // dismiss can be 'cancel', 'overlay',
                    // 'close', and 'timer'
                    if (dismiss === 'cancel') {

                        location.href = "Lost.aspx";
                    }
                });

            } else {
                swal("Atenção", "Impossível prosseguir, a empresa possui um membro com os mesmos dados, verifique a lista abaixo!", "warning");
             
            }
        });
    } else {
        //console.log('error; ' + ' nome ' + nome + ' apelido ' + apelido + ' email ' + email + ' contato ' + contato + ' endereco ' + endereco + ' data ' + dataNasc + ' nrDoc ' + nrDoc + ' docIdentificacao ' + docIdentificacao);
        swal("Atenção", "Impossível prosseguir, verifique se possui todos os campos corretamente preenchidos", "warning");
        e.preventDefault
    }
});
$('.btnAddNewFound').click(function (e) {

    var typeItem = $('.typeItem :selected').text();
    var locationItem = $('.locationItem :selected').val();
    var dateLost = $('.dateLost').val();
    var firtname = $('.firtname').val();
    var lastname = $('.lastname').val();
    var email = $('.email').val();
    var contact = $('.contact').val();
    var outrosDetalhesLost = $('.outrosDetalhesLost').val();
    var id = $(this).attr('itemid');
    if (dateLost && firtname && lastname != '0' && outrosDetalhesLost) {
        swal('Processando... por favor aguarde');
        swal.showLoading();
        var parameter = {
            'id': id, 'typeItem': typeItem, 'locationItem': locationItem, 'date': dateLost, 'firtname': firtname, 'lastname': lastname, 'email': email, 'contact': contact, 'outrosDetalhesLost': outrosDetalhesLost
        };

        ajaxRequestAsync('Services.aspx/addNewItem', parameter, function (data) {
            if (data.d == '1') {
                //var file = $("#file").val();
                //if (file) {
                //    uploadFile(function (data) {

                //    });
                //}
                //console.log('sucesso');
                //$('#collapseOne').removeClass('in');
                //$('#getMembrosContainer').empty();
                //getMembros();
                swal.closeModal();

                swal({
                    title: 'Sucesso',
                    text: "Operação bem-sucedida!",
                    type: 'success',
                    showCancelButton: false,
                    confirmButtonColor: '#007AFF',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'OK',
                    confirmButtonClass: 'btn btn-primary',
                    cancelButtonClass: 'btn btn-danger',
                    buttonsStyling: false
                }).then(function () {

                    // location.reload();
                }, function (dismiss) {
                    // dismiss can be 'cancel', 'overlay',
                    // 'close', and 'timer'
                    if (dismiss === 'cancel') {


                    }
                });

            } else {
                swal("Atenção", "Impossível prosseguir, a empresa possui um membro com os mesmos dados, verifique a lista abaixo!", "warning");

            }
        });
    } else {
        //console.log('error; ' + ' nome ' + nome + ' apelido ' + apelido + ' email ' + email + ' contato ' + contato + ' endereco ' + endereco + ' data ' + dataNasc + ' nrDoc ' + nrDoc + ' docIdentificacao ' + docIdentificacao);
        swal("Atenção", "Impossível prosseguir, verifique se possui todos os campos corretamente preenchidos", "warning");
        e.preventDefault
    }
});
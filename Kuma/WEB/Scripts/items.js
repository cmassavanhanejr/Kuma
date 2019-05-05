var getItems = function () {
    var parameter = { "staff": "staff" };
    ajaxRequestSyncTemplate('Services.aspx/getItems', parameter, "getItems", "getItemsContainer", function (data) {

        $('.textEditable').editable({
            validate: function (value) {

                if ($.trim(value) == '')
                    return 'Campo Obrigatorio';
            }
        }).on('save', function (e, params) {
            var parameter = { "atributo": $(this).data('field'), "valor": params.newValue, "id": $(this).attr('itemid') };

            ajaxRequestAsync('Services.aspx/UpdateCredit', parameter, function (data) {
                console.log('dados actualizados com sucesso');
            });
        });
        $('.btnCancel').click(function (e) {
            var id = $(this).attr('itemid');
            console.log(id);
            var parameter = { "id": id, 'type': '0' };
            ajaxRequestAsync('Services.aspx/UpdateCreditData', parameter, function (data) {
                console.log('dados actualizados com sucesso');
                $('#getCreditDataContainer').empty();
                CreditData();
            });
        });
        $('.btnSubmit').click(function (e) {
            var id = $(this).attr('itemid');
            var idC = $(this).attr('data-cred');

            console.log(idC);
            var parameter = { "id": id, 'type': '1' };
            ajaxRequestAsync('Services.aspx/UpdateCreditData', parameter, function (data) {
                console.log('dados actualizados com sucesso');
                $('#getCreditDataContainer').empty();
                CreditData();
                $('#getCreditsContainer').empty();
                getCreditos();

            });
        });
    });
};
$(function () {
  
    getItems();

});

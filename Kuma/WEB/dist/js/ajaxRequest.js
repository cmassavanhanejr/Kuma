function ajaxRequestAsyncTemplate(url, parametros, templateID, templateContainerID, callback) {
    var pageUrl = url;
    var paramArray = null;
    if (parametros.length != 0) {
        paramArray = JSON.stringify(parametros);
    }
    $.ajax({
        type: 'POST',
        async: true,
        url: pageUrl,
        data: paramArray,
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (data) {
            onSuccess(data);

        },
        error: function (data, success, error) {
            //alert("Error : " + error);
        }
    });
    function onSuccess(data) {
        data = jQuery.parseJSON(data.d);
        if ((data + '').length > 0) {
            $("#" + templateID).tmpl(data).appendTo("#" + templateContainerID);
            callback(data);      


        }
        else {
        }



    }

}


function ajaxRequestSyncTemplate(url, parametros, templateID, templateContainerID, callback) {
    var pageUrl = url;
    var paramArray = null;
    if (parametros.length != 0) {

        paramArray = JSON.stringify(parametros);
    }
    $.ajax({
        type: 'POST',
        async: false,
        url: pageUrl,
        data: paramArray,
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (data) {
            onSuccess(data);

        },
        error: function (data, success, error) {
            //alert("Error : " + error);
        }
    });
    function onSuccess(data) {
      //  $(".loader").hide();
        data = jQuery.parseJSON(data.d);
        if ((data + '').length > 0) {
    
            $("#" + templateID).tmpl(data).appendTo("#" + templateContainerID);
            callback(data);
          

        }
        else {

            //  alert("no data");



        }



    }

}

function ajaxRequestAsync(url, parametros, callback) {
    var pageUrl = url;
    var paramArray = null;
    if (parametros.length != 0) {

        paramArray = JSON.stringify(parametros);
    }
    $.ajax({
        type: 'POST',
        async: true,
        url: pageUrl,
        data: paramArray,
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (data) {
            callback(data);

        },
        error: function (data, success, error) {
            //alert("Error : " + error);
        }
    });
   
}

function ajaxRequestSync(url, parametros, callback) {
    var pageUrl = url;
    var paramArray = null;
    if (parametros.length != 0) {

        paramArray = JSON.stringify(parametros);
    }
    $.ajax({
        type: 'POST',
        async: false,
        url: pageUrl,
        data: paramArray,
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (data) {
            callback(data);

        },
        error: function (data, success, error) {
            //alert("Error : " + error);
        }
    });

}

//Ajax request com sweetAlert
function ajaxRequestSyncTemplateWithSweetAlert(url, parametros, templateID, templateContainerID, callback) {
    var pageUrl = url;
    var paramArray = null;
    if (parametros.length != 0) {

        paramArray = JSON.stringify(parametros);
    }
    $.ajax({
        type: 'POST',
        async: false,
        url: pageUrl,
        data: paramArray,
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (data) {
            onSuccess(data);

        },
        error: function (data, success, error) {
            //alert("Error : " + error);
        }
    });
    function onSuccess(data) {
      //  $(".loader").hide();
        data = jQuery.parseJSON(data.d);
        if ((data + '').length > 0) {
    
            $("#" + templateID).tmpl(data).appendTo("#" + templateContainerID);
            callback(data);
          

        }
        else {
            
            swal({
                title: "UPPS...Nenhum Item foi encontrado!!!",
               
                type: "warning",
                confirmButtonColor: "#007AFF"
            });
            e.preventDefault

           

        }



    }

}

var getParameterByName = function (name, url) {

    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, "\\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
}
var carregarStackHolder = function () {

    var parameter = { "id": getParameterByName('id') };
    ajaxRequestSyncTemplate('Services.aspx/getLostDetailsById', parameter, "detailsTemplate", "container", function (data) {

        // tableSorter("TableLost");
    });
};

jQuery(document).ready(function () {

    carregarStackHolder();
});
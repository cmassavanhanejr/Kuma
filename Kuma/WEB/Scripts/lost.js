var tableSorter = function (tableName) {
    $('.tablesorter-childRow td').hide();
    var tableEmpresa = $('#' + tableName).tablesorter({
        theme: 'blue',
        widthFixed: true,
        cssChildRow: "tablesorter-childRow",
        widgets: ["zebra", "group", "filter", "scroller"],

        widgetOptions: {
            group_collapsible: true,
            group_collapsed: false,
            group_count: false,
            filter_childRows: true,


            stickyHeaders_attachTo: '.wrapper',
            // scroll tbody to top after sorting
            scroller_height: 600,
            // scroll tbody to top after sorting
            scroller_upAfterSort: true,
            // pop table header into view while scrolling up the page
            scroller_jumpToHeader: true,
            // In tablesorter v2.19.0 the scroll bar width is auto-detected
            // add a value here to override the auto-detected setting
            scroller_barWidth: null,
            // scroll_idPrefix was removed in v2.18.0
            // scroller_idPrefix : 's_'
            filter_childRows: true,
            filter_childByColumn: false,
            filter_childWithSibs: false,
            // use the filter_external option OR use bindSearch function (below)
            // to bind external filters.
            // filter_external: '.search',

            filter_columnFilters: false,
            // extra css class applied to the table row containing the filters & the inputs within that row
            filter_cssFilter: '',

            // If there are child rows in the table (rows with class name from "cssChildRow" option)
            // and this option is true and a match is found anywhere in the child row, then it will make that row
            // visible; default is false


            // if true, filters are collapsed initially, but can be revealed by hovering over the grey bar immediately
            // below the header row. Additionally, tabbing through the document will open the filter row when an input gets focus
            filter_hideFilters: false,

            // Set this option to false to make the searches case sensitive
            filter_ignoreCase: true,

            // jQuery selector string of an element used to reset the filters
            filter_reset: '.reset',

            // Use the $.tablesorter.storage utility to save the most recent filters
            filter_saveFilters: true,

            // Delay in milliseconds before the filter widget starts searching; This option prevents searching for
            // every character while typing and should make searching large tables faster.
            filter_searchDelay: 300,

            // Set this option to true to use the filter to find text from the start of the column
            // So typing in "a" will find "albert" but not "frank", both have a's; default is false
            filter_startsWith: false,

            // if false, filters are collapsed initially, but can be revealed by hovering over the grey bar immediately
            // below the header row. Additionally, tabbing through the document will open the filter row when an input gets focus
            filter_hideFilters: false

        }
    });


    $('#' + tableName).delegate('.toggle', 'click', function () {
        $(this).closest('tr').nextUntil('tr:not(.tablesorter-childRow)').find('td').toggle();
        return false;
    });

    $.tablesorter.filter.bindSearch(tableEmpresa, $('.filter-select[data-table="' + tableName + '"]'));
    $.tablesorter.filter.bindSearch(tableEmpresa, $('.search[data-table="' + tableName + '"]'));
    // $.tablesorter.filter.bindSearch(tableEmpresa, $('.filter-select'));
    // $.tablesorter.filter.bindSearch(tableEmpresa, $('.search')); 
}

var carregarStackHolder = function () {

    var parameter = { "staff": 'staff' };
    ajaxRequestSyncTemplate('Services.aspx/getAllLostItems', parameter, "lostTemplate", "lostContainer", function (data) {

       // tableSorter("TableLost");
    });
};

jQuery(document).ready(function () {

    carregarStackHolder();
});
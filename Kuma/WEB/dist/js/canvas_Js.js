
var mapaProcessamentos = function () {
    var parameter = {};
    ajaxRequestAsync('FormListaProcessoSalarios.aspx/mapaProcessamentos', parameter, function (data) {

        var dataPointsJ = jQuery.parseJSON(data.d);

        var chart = new CanvasJS.Chart("chartContainer",
{
    title: {
        text: "Mapa de Processamentos Ano Corrente"
    },
    animationEnabled: true,
    animationDuration: 2000,
    legend: {
        verticalAlign: "bottom",
        horizontalAlign: "center"
    },
    data: [
    {
        indexLabelFontSize: 14,
        indexLabelFontFamily: "Monospace",
        indexLabelFontColor: "darkgrey",
        indexLabelLineColor: "darkgrey",
        indexLabelPlacement: "outside",
        type: "pie",
        showInLegend: true,
        toolTipContent: "{y} - <strong>#percent%</strong>",
        dataPoints: dataPointsJ,
    }
    ]
}); chart.render();


    });
}
var mapaPagamentos = function () {
    var parameter = {};
   // alert("");
    ajaxRequestAsync('FormListaProcessoSalarios.aspx/mapaPagamentos', parameter, function (data) {
        
        var dataPointsJ = jQuery.parseJSON(data.d);

        var chart = new CanvasJS.Chart("chartContainerPay",
{
   		title: {
			text: "Basic Range Spline Area Chart"
		},
		axisX: {
          interval: 10
		},
		data: [
		{
			type: "rangeSplineArea",          
			dataPoints: dataPointsJ,
		}		
		]
}); chart.render();


    });
}
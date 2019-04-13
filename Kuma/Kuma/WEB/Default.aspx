<%@ Page Title="" Language="C#" MasterPageFile="~/kuma.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WEB.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
    <!-- Small boxes (Stat box) -->
    <div class="row">
        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-aqua">
                <div class="inner">
                    <h3>150</h3>

                    <p>Perdidos reportados</p>
                </div>
                <div class="icon">
                    <i class="ion ion-bag"></i>
                </div>
                <a href="#" class="small-box-footer">Visualizar <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-green">
                <div class="inner">
                    <h3>53</h3>

                    <p>Artigos encontrados</p>
                </div>
                <div class="icon">
                    <i class="ion ion-stats-bars"></i>
                </div>
                <a href="#" class="small-box-footer">Visualizar <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-yellow">
                <div class="inner">
                    <h3>44</h3>

                    <p>Coicidentes</p>
                </div>
                <div class="icon">
                    <i class="ion ion-person-add"></i>
                </div>
                <a href="#" class="small-box-footer">visualizar <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-red">
                <div class="inner">
                    <h3>65</h3>

                    <p>Retornados com sucesso</p>
                </div>
                <div class="icon">
                    <i class="ion ion-pie-graph"></i>
                </div>
                <a href="#" class="small-box-footer">visualizar <i class="fa fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <!-- ./col -->
    </div>
    <!-- /.row -->
    <!-- Main row -->
    <div class="row">
        <div class="col-md-6">
            <!-- AREA CHART -->
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Artigos perdidos no último mês</h3>

                    <div class="box-tools pull-right">
                    </div>
                </div>
                <div class="box-body chart-responsive">
                    <div class="chart" id="revenue-chart" style="height: 300px;"></div>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->



        </div>
        <!-- /.col (LEFT) -->
        <div class="col-md-6">
            <!-- LINE CHART -->
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title">Artigos encontrados no último mês</h3>

                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse">
                            <i class="fa fa-minus"></i>
                        </button>
                        <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                    </div>
                </div>
                <div class="box-body chart-responsive">
                    <div class="chart" id="line-chart" style="height: 300px;"></div>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->

        </div>
        <!-- /.col (RIGHT) -->
    </div>
    <!-- /.row -->
    <!-- /.row (main row) -->
    <div class="row">

        <div class="col-xs-12 col-md-6">


            <h3 class="panel-list-header">Recently Lost Items</h3>


                <div class="box-body">
                    <div class="row">
                        <div class="col-sm-2 col-md-4 col-lg-2">
                            <p>
                                <span class="small text-muted">Ref</span>
                                49

                            </p>
                            <div class="image-wrapper">
                                <span class="primary-image"></span>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-8 col-lg-6 item-details">
                            <h4>Mobile Phone
                            </h4>
                            <div class="table-responsive">
                                <table class="table table-condensed">
                                    <colgroup>
                                        <col width="30%">
                                        <col>
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <th>Colour</th>
                                            <td>Yellow</td>
                                        </tr>
                                        <tr>
                                            <th>IMEI Number</th>
                                            <td>978706498579764</td>
                                        </tr>
                                        <tr>
                                            <th>Serial Number</th>
                                            <td>YOJMPPXQ1VK6</td>
                                        </tr>
                                        <tr>
                                            <th>Make</th>
                                            <td>Samsung</td>
                                        </tr>
                                        <tr>
                                            <th>Model</th>
                                            <td>Galaxy Note 4</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="col-sm-4 col-md-12 col-lg-4">
                            <ul class="list-unstyled hidden-xs">
                                <li>Status: <span class="item-status bg-warning">New</span></li>
                                <li>
                                    <span class="item-type bg-orange">Lost</span>
                                    on 12/04/2019 at 8:42pm
                                </li>
                                <li>Lost in <span class="item-location bg-info">Conference Room 3</span></li>
                            </ul>

                            <ul class="list-inline visible-xs">
                                <li>Status: <span class="item-status bg-warning">New</span></li>
                                <li>
                                    <span class="item-type bg-orange">Lost</span>
                                    on 12/04/2019 at 8:42pm
                                </li>
                                <li>Lost in <span class="item-location bg-info">Conference Room 3</span></li>
                            </ul>

                        </div>
                    </div>

                </div>

      
                <div class="box-body">
                    <div class="row">
                        <div class="col-sm-2 col-md-4 col-lg-2">
                            <p>
                                <span class="small text-muted">Ref</span>
                                47

                            </p>
                            <div class="image-wrapper">
                                <span class="primary-image"></span>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-8 col-lg-6 item-details">
                            <h4>Mobile Phone
                            </h4>
                            <div class="table-responsive">
                                <table class="table table-condensed">
                                    <colgroup>
                                        <col width="30%">
                                        <col>
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <th>Colour</th>
                                            <td>Black/White</td>
                                        </tr>
                                        <tr>
                                            <th>IMEI Number</th>
                                            <td>431112064974486</td>
                                        </tr>
                                        <tr>
                                            <th>Serial Number</th>
                                            <td>B0U0DLR6GYYL</td>
                                        </tr>
                                        <tr>
                                            <th>Make</th>
                                            <td>Motorola</td>
                                        </tr>
                                        <tr>
                                            <th>Model</th>
                                            <td>Moto X</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="col-sm-4 col-md-12 col-lg-4">
                            <ul class="list-unstyled hidden-xs">
                                <li>Status: <span class="item-status bg-warning">New</span></li>
                                <li>
                                    <span class="item-type bg-orange">Lost</span>
                                    on 12/04/2019 at 11:40am
                                </li>
                                <li>Lost in <span class="item-location bg-info">Coffee Shop</span></li>
                            </ul>

                            <ul class="list-inline visible-xs">
                                <li>Status: <span class="item-status bg-warning">New</span></li>
                                <li>
                                    <span class="item-type bg-orange">Lost</span>
                                    on 12/04/2019 at 11:40am
                                </li>
                                <li>Lost in <span class="item-location bg-info">Coffee Shop</span></li>
                            </ul>

                        </div>
                    </div>

                </div>

     
                <div class="box-body">
                    <div class="row">
                        <div class="col-sm-2 col-md-4 col-lg-2">
                            <p>
                                <span class="small text-muted">Ref</span>
                                85

                            </p>
                            <div class="image-wrapper">
                                <span class="primary-image"></span>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-8 col-lg-6 item-details">
                            <h4>Camera
                            </h4>
                            <div class="table-responsive">
                                <table class="table table-condensed">
                                    <colgroup>
                                        <col width="30%">
                                        <col>
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <th>Serial Number</th>
                                            <td>CIJWU2MRC9E</td>
                                        </tr>
                                        <tr>
                                            <th>Camera Make</th>
                                            <td>Canon</td>
                                        </tr>
                                        <tr>
                                            <th>Camera Model</th>
                                            <td>IXUS 100 IS</td>
                                        </tr>
                                        <tr>
                                            <th>Camera Type</th>
                                            <td>Digital/SLR</td>
                                        </tr>
                                        <tr>
                                            <th>Resolution</th>
                                            <td>12.1</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="col-sm-4 col-md-12 col-lg-4">
                            <ul class="list-unstyled hidden-xs">
                                <li>Status: <span class="item-status bg-warning">New</span></li>
                                <li>
                                    <span class="item-type bg-orange">Lost</span>
                                    on 12/04/2019 at 3:18am
                                </li>
                                <li>Lost in <span class="item-location bg-info">Meeting Room 2</span></li>
                            </ul>

                            <ul class="list-inline visible-xs">
                                <li>Status: <span class="item-status bg-warning">New</span></li>
                                <li>
                                    <span class="item-type bg-orange">Lost</span>
                                    on 12/04/2019 at 3:18am
                                </li>
                                <li>Lost in <span class="item-location bg-info">Meeting Room 2</span></li>
                            </ul>

                        </div>
                    </div>

                </div>

     

        </div>

        <div class="col-xs-12 col-md-6">


            <h3 class="panel-list-header">Recently Found Items</h3>

            <a class="item box box-default" href="#">

                <div class="box-body">
                    <div class="row">
                        <div class="col-sm-2 col-md-4 col-lg-2">
                            <p>
                                <span class="small text-muted">Ref</span>
                                100

                            </p>
                            <div class="image-wrapper">
                                <span class="primary-image"></span>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-8 col-lg-6 item-details">
                            <h4>Mobile Phone
                            </h4>
                            <div class="table-responsive">
                                <table class="table table-condensed">
                                    <colgroup>
                                        <col width="30%">
                                        <col>
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <th>Colour</th>
                                            <td>Yellow</td>
                                        </tr>
                                        <tr>
                                            <th>IMEI Number</th>
                                            <td>364622564130212</td>
                                        </tr>
                                        <tr>
                                            <th>Serial Number</th>
                                            <td>GZLHYCBBN7UA</td>
                                        </tr>
                                        <tr>
                                            <th>Make</th>
                                            <td>Motorola</td>
                                        </tr>
                                        <tr>
                                            <th>Model</th>
                                            <td>Moto X</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="col-sm-4 col-md-12 col-lg-4">
                            <ul class="list-unstyled hidden-xs">
                                <li>Status: <span class="item-status bg-warning">New</span></li>
                                <li>
                                    <span class="item-type bg-teal">Found</span>
                                    on 12/04/2019 at 10:54pm
                                </li>
                                <li>Found in <span class="item-location bg-info">Reception</span></li>
                            </ul>

                            <ul class="list-inline visible-xs">
                                <li>Status: <span class="item-status bg-warning">New</span></li>
                                <li>
                                    <span class="item-type bg-teal">Found</span>
                                    on 12/04/2019 at 10:54pm
                                </li>
                                <li>Found in <span class="item-location bg-info">Reception</span></li>
                            </ul>

                        </div>
                    </div>

                </div>

            </a>
            <a class="item box box-default" href="https://reclaimhub.com/control-panel/items/view/5cb150bd230446000124476d/">

                <div class="box-body">
                    <div class="row">
                        <div class="col-sm-2 col-md-4 col-lg-2">
                            <p>
                                <span class="small text-muted">Ref</span>
                                115

                            </p>
                            <div class="image-wrapper">
                                <span class="primary-image"></span>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-8 col-lg-6 item-details">
                            <h4>Camera
                            </h4>
                            <div class="table-responsive">
                                <table class="table table-condensed">
                                    <colgroup>
                                        <col width="30%">
                                        <col>
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <th>Serial Number</th>
                                            <td>KU4BL9O13PH</td>
                                        </tr>
                                        <tr>
                                            <th>Camera Make</th>
                                            <td>Canon</td>
                                        </tr>
                                        <tr>
                                            <th>Camera Model</th>
                                            <td>EOS 6D</td>
                                        </tr>
                                        <tr>
                                            <th>Camera Type</th>
                                            <td>Digital/SLR</td>
                                        </tr>
                                        <tr>
                                            <th>Resolution</th>
                                            <td>20.2</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="col-sm-4 col-md-12 col-lg-4">
                            <ul class="list-unstyled hidden-xs">
                                <li>Status: <span class="item-status bg-warning">New</span></li>
                                <li>
                                    <span class="item-type bg-teal">Found</span>
                                    on 12/04/2019 at 12:46am
                                </li>
                                <li>Found in <span class="item-location bg-info">Conference Room 3</span></li>
                            </ul>

                            <ul class="list-inline visible-xs">
                                <li>Status: <span class="item-status bg-warning">New</span></li>
                                <li>
                                    <span class="item-type bg-teal">Found</span>
                                    on 12/04/2019 at 12:46am
                                </li>
                                <li>Found in <span class="item-location bg-info">Conference Room 3</span></li>
                            </ul>

                        </div>
                    </div>

                </div>

            </a>
            <a class="item box box-default" href="https://reclaimhub.com/control-panel/items/view/5cb150bc230446000124474d/">

                <div class="box-body">
                    <div class="row">
                        <div class="col-sm-2 col-md-4 col-lg-2">
                            <p>
                                <span class="small text-muted">Ref</span>
                                99

                            </p>
                            <div class="image-wrapper">
                                <span class="primary-image"></span>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-8 col-lg-6 item-details">
                            <h4>Mobile Phone
                            </h4>
                            <div class="table-responsive">
                                <table class="table table-condensed">
                                    <colgroup>
                                        <col width="30%">
                                        <col>
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <th>Colour</th>
                                            <td>Green</td>
                                        </tr>
                                        <tr>
                                            <th>IMEI Number</th>
                                            <td>833849438231850</td>
                                        </tr>
                                        <tr>
                                            <th>Serial Number</th>
                                            <td>JEKM56NU2DNE</td>
                                        </tr>
                                        <tr>
                                            <th>Make</th>
                                            <td>Motorola</td>
                                        </tr>
                                        <tr>
                                            <th>Model</th>
                                            <td>Moto E</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="col-sm-4 col-md-12 col-lg-4">
                            <ul class="list-unstyled hidden-xs">
                                <li>Status: <span class="item-status bg-warning">New</span></li>
                                <li>
                                    <span class="item-type bg-teal">Found</span>
                                    on 01/04/2019 at 12:11am
                                </li>
                                <li>Found in <span class="item-location bg-info">Conference Room 1</span></li>
                            </ul>

                            <ul class="list-inline visible-xs">
                                <li>Status: <span class="item-status bg-warning">New</span></li>
                                <li>
                                    <span class="item-type bg-teal">Found</span>
                                    on 01/04/2019 at 12:11am
                                </li>
                                <li>Found in <span class="item-location bg-info">Conference Room 1</span></li>
                            </ul>

                        </div>
                    </div>

                </div>

            </a>

        </div>

    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="footer" runat="server">
    <script src="../../bootstrap/js/bootstrap.min.js"></script>
    <!-- Morris.js charts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="../../plugins/morris/morris.min.js"></script>
    <!-- FastClick -->
    <script src="../../plugins/fastclick/fastclick.js"></script>
    <!-- AdminLTE App -->
    <script src="../../dist/js/app.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="../../dist/js/demo.js"></script>
    <script>
        $(function () {
            "use strict";

            // AREA CHART
            var area = new Morris.Area({
                element: 'revenue-chart',
                resize: true,
                data: [
                  { y: '2011 Q1', item1: 2666, item2: 2666 },
                  { y: '2011 Q2', item1: 2778, item2: 2294 },
                  { y: '2011 Q3', item1: 4912, item2: 1969 },
                  { y: '2011 Q4', item1: 3767, item2: 3597 },
                  { y: '2012 Q1', item1: 6810, item2: 1914 },
                  { y: '2012 Q2', item1: 5670, item2: 4293 },
                  { y: '2012 Q3', item1: 4820, item2: 3795 },
                  { y: '2012 Q4', item1: 15073, item2: 5967 },
                  { y: '2013 Q1', item1: 10687, item2: 4460 },
                  { y: '2013 Q2', item1: 8432, item2: 5713 }
                ],
                xkey: 'y',
                ykeys: ['item1', 'item2'],
                labels: ['Item 1', 'Item 2'],
                lineColors: ['#a0d0e0', '#3c8dbc'],
                hideHover: 'auto'
            });

            // LINE CHART
            var line = new Morris.Line({
                element: 'line-chart',
                resize: true,
                data: [
                  { y: '2011 Q1', item1: 2666 },
                  { y: '2011 Q2', item1: 2778 },
                  { y: '2011 Q3', item1: 4912 },
                  { y: '2011 Q4', item1: 3767 },
                  { y: '2012 Q1', item1: 6810 },
                  { y: '2012 Q2', item1: 5670 },
                  { y: '2012 Q3', item1: 4820 },
                  { y: '2012 Q4', item1: 15073 },
                  { y: '2013 Q1', item1: 10687 },
                  { y: '2013 Q2', item1: 8432 }
                ],
                xkey: 'y',
                ykeys: ['item1'],
                labels: ['Item 1'],
                lineColors: ['#3c8dbc'],
                hideHover: 'auto'
            });

        });
    </script>
</asp:Content>

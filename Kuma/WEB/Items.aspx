<%@ Page Title="" Language="C#" MasterPageFile="~/kuma.Master" AutoEventWireup="true" CodeBehind="Items.aspx.cs" Inherits="WEB.Items" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
    <h1>Artigos perdidos e achados      
        <small></small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i></a></li>
        <li class="active"></li>
    </ol>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
    <!-- SELECT2 EXAMPLE -->
    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title">Filtros</h3>

            <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
            </div>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
            <div class="row">
                <div class="col-sm-4">
                    <div class="form-group">
                        <label>Categoria</label>
                        <select class="form-control select2" style="width: 100%;">
                            <option selected="selected">Alabama</option>
                            <option>Alaska</option>
                            <option>California</option>
                            <option>Delaware</option>
                            <option>Tennessee</option>
                            <option>Texas</option>
                            <option>Washington</option>
                        </select>
                    </div>
                </div>
                <!-- /.col -->
                <div class="col-sm-4">
                    <div class="form-group">
                        <label>Localização</label>
                        <select class="form-control select2" multiple="multiple" data-placeholder="Select a State" style="width: 100%;">
                            <option>Alabama</option>
                            <option>Alaska</option>
                            <option>California</option>
                            <option>Delaware</option>
                            <option>Tennessee</option>
                            <option>Texas</option>
                            <option>Washington</option>
                        </select>
                    </div>

                </div>
                <!-- /.col -->
                <div class="col-sm-3">
                    <!-- Date range -->
                    <div class="form-group">
                        <label>Data Perdido/Achado:</label>

                        <div class="input-group">
                            <div class="input-group-addon">
                                <i class="fa fa-calendar"></i>
                            </div>
                            <input type="text" class="form-control pull-right" id="reservation">
                        </div>
                        <!-- /.input group -->
                    </div>
                    <!-- /.form group -->
                </div>
                <div class="col-sm-1">
                    <div class="form-group">
                        <label></label>
                        <a href="#" class="btn btn-block btn-success">Aplicar</a>
                    </div>
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.box-body -->

    </div>
    <!-- /.box -->
    <div class="row">
        <div class="col-sm-12">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">Listagem</h3>
                </div>

                <!-- /.box-header -->
                <div class="box-body">
                    <input class="search selectable form-control" data-table="TableMembro" type="search" placeholder="pesquisar" data-column="all" />
                    <br />
                    <div class="table-responsive no-padding">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>ID</th>
                                    <th>Artigo</th>
                                    <th>Data</th>
                                    <th>Estado</th>
                                    <th>Detalhes</th>
                                    <th>Local</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody id="getItemsContainer">
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="footer" runat="server">
    <script id="getItems" type="text/x-jQuery-tmpl">
        <tr>
            <td></td>
            <td>183</td>
            <td>John Doe</td>
            <td>11-7-2014</td>
            <td><span class="label label-success">Approved</span></td>
            <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
            <td></td>
            <td></td>
        </tr>
    </script>
    <script src="Scripts/items.js"></script>
</asp:Content>

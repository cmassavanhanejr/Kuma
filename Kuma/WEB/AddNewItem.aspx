<%@ Page Title="" Language="C#" MasterPageFile="~/kuma.Master" AutoEventWireup="true" CodeBehind="AddNewItem.aspx.cs" Inherits="WEB.AddNewLost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
    <h1>Adicionar novo artigo <%=Request.QueryString["ds"] %>     
        <small></small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i></a></li>
        <li class="active"></li>
    </ol>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
    <div class="row" id="lost" style="display:none;">
        <div class="col-sm-12">
            <div class="box box-danger">

                <!-- /.box-header -->
                <!-- form start -->
                <div class="box-body">
                    <fieldset>
                        <legend>Detalhes do Artigo</legend>

                        <div class="col-xs-3">

                            <div class="form-group">
                                <label for="exampleInputEmail1">Tipo</label>
                                <asp:DropDownList ID="DropDownList1" Width="100%" CssClass="form-control select2 typeItem" runat="server" DataSourceID="ObjectDataSourceCategorias" DataTextField="designacao" DataValueField="id"></asp:DropDownList>

                            </div>
                        </div>
                        <div class="col-xs-4">
                            <div class="form-group">
                                <label for="exampleInputPassword1">Localização</label>
                                <asp:DropDownList ID="DropDownList2" Width="100%" CssClass="form-control select2 locationItem" runat="server" DataSourceID="ObjectDataSourceProvincias" DataTextField="designacao" DataValueField="id"></asp:DropDownList>
                            </div>

                        </div>
                        <div class="col-xs-5">

                            <div class="form-group">
                                <label>Perdido em:</label>

                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <input type="text" class="form-control pull-right dateLost datepicker"  >
                                </div>
                                <!-- /.input group -->
                            </div>
                        </div>
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label>Outros Detalhes</label>
                                <textarea class="form-control outrosDetalhesLost" id="outrosDetalhesLost" rows="5" placeholder="escreva ..."></textarea>
                            </div>
                        </div>


                    </fieldset>
                    <br />
                    <fieldset>
                        <legend>Detalhes do proprietário</legend>
                        <div class="col-xs-6">

                            <div class="form-group">
                                <label for="exampleInputEmail1">Primeiro nome</label>
                                <input type="text" class="form-control firtname" id="firtname" placeholder="Primeiro nome">
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="form-group">
                                <label for="exampleInputPassword1">Último nome</label>
                                <input type="text" class="form-control lastname" id="lastname" placeholder="Último nome">
                            </div>

                        </div>
                        <div class="col-xs-6">

                            <div class="form-group">
                                <label for="">Email</label>
                                <input type="email" class="form-control email" id="email" placeholder="email">
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="form-group">
                                <label for="exampleInputPassword1">Contato</label>
                                <input type="number" class="form-control contact" id="contato" placeholder="contato">
                            </div>

                        </div>
                    </fieldset>

                </div>
                <!-- /.box-body -->

                <div class="box-footer">
                    <a href="Lost.aspx" class="btn btn-warning"><i class="fa fa-arrow-left"></i>Voltar</a>
                    <a href="#" class="btn btn-success pull-right btnnewItem" itemid="0">Submeter</a>
                </div>
            </div>
        </div>
    </div>
    <div class="row" id="found" style="display:none;">
        <div class="col-sm-12">
            <div class="box box-danger">

                <!-- /.box-header -->
                <!-- form start -->
                <div class="box-body">
                    <fieldset>
                        <legend>Detalhes do Artigo</legend>

                        <div class="col-xs-3">

                            <div class="form-group">
                                <label for="exampleInputEmail1">Tipo</label>
                                <asp:DropDownList ID="DropDownList3" Width="100%" CssClass="form-control select2 typeItemFound" runat="server" DataSourceID="ObjectDataSourceCategorias" DataTextField="designacao" DataValueField="id"></asp:DropDownList>

                            </div>
                        </div>
                        <div class="col-xs-4">
                            <div class="form-group">
                                <label for="exampleInputPassword1">Localização</label>
                                <asp:DropDownList ID="DropDownList4" Width="100%" CssClass="form-control select2 locationItemFound" runat="server" DataSourceID="ObjectDataSourceProvincias" DataTextField="designacao" DataValueField="id"></asp:DropDownList>
                            </div>

                        </div>
                        <div class="col-xs-5">

                            <div class="form-group">
                                <label>Encontrado em:</label>

                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <input type="text" class="form-control pull-right dateFound datepicker">
                                </div>
                                <!-- /.input group -->
                            </div>
                        </div>
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label>Outros Detalhes</label>
                                <textarea class="form-control outrosDetalhesFound" rows="5" placeholder="escreva ..."></textarea>
                            </div>
                        </div>


                    </fieldset>
                    <br />
                    <fieldset>
                        <legend>Encontrado por</legend>
                        <div class="col-xs-6">

                            <div class="form-group">
                                <label for="exampleInputEmail1">Primeiro nome</label>
                                <input type="text" class="form-control firtnameFound" id="firtnameFound" placeholder="Primeiro nome">
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="form-group">
                                <label for="exampleInputPassword1">Último nome</label>
                                <input type="text" class="form-control lastnameFound" id="lastnameFound" placeholder="Último nome">
                            </div>

                        </div>
                        <div class="col-xs-6">

                            <div class="form-group">
                                <label for="">Email</label>
                                <input type="email" class="form-control emailFound" id="emailFound" placeholder="email">
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="form-group">
                                <label for="exampleInputPassword1">Contato</label>
                                <input type="number" class="form-control contatoFound" id="contatoFound" placeholder="contato">
                            </div>

                        </div>
                    </fieldset>
                    <br />
                    <fieldset>
                        <legend>Detalhes do Armazenamento</legend>
                        <div class="col-xs-6">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Armazem</label>
                                <input type="text" class="form-control armazem" id="armazem" placeholder="armazem"/>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="form-group">
                                <label for="exampleInputPassword1">Numero de etiqueta</label>
                                <input type="text" class="form-control lastnameFound" id="tagNumber" placeholder="Numero de etiqueta">
                            </div>

                        </div>
             
                    </fieldset>
                </div>
                <!-- /.box-body -->

                <div class="box-footer">
                    <a href="Lost.aspx" class="btn btn-warning">Cancelar</a>
                    <a href="#" class="btn btn-success pull-right btnAddNewFound">Submeter</a>
                </div>
            </div>
        </div>
    </div>
    <!--ObjectDataSource-->
    <asp:ObjectDataSource runat="server" ID="ObjectDataSourceCategorias" DataObjectTypeName="DAL.Categoria" DeleteMethod="DeleteByIdCategoria" InsertMethod="InsertCategoria" OldValuesParameterFormatString="original_{0}" SelectMethod="GetAllCategorias" TypeName="BLL.CategoriaServico" UpdateMethod="UpdateCategoria">
        <DeleteParameters>
            <asp:Parameter Name="key" Type="Object"></asp:Parameter>
        </DeleteParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource runat="server" ID="ObjectDataSourceProvincias" DataObjectTypeName="DAL.Localizacao" DeleteMethod="DeleteByIdLocalizacao" InsertMethod="InsertLocalizacao" OldValuesParameterFormatString="original_{0}" SelectMethod="GetAllLocalizacaos" TypeName="BLL.LocalizacaoServico" UpdateMethod="UpdateLocalizacao">
        <DeleteParameters>
            <asp:Parameter Name="key" Type="Object"></asp:Parameter>
        </DeleteParameters>
    </asp:ObjectDataSource>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="footer" runat="server">
    <script src="Scripts/addnewItem.js"></script>
</asp:Content>

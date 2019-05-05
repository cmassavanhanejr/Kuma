<%@ Page Title="" Language="C#" MasterPageFile="~/kuma.Master" AutoEventWireup="true" CodeBehind="FoundDetails.aspx.cs" Inherits="WEB.ItemsDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" runat="server">
    <h1>Referência do Artigo <span><%= Request.QueryString["ui"] %></span>
        <small></small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i></a></li>
        <li class="active"></li>
    </ol>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
    <div id="container">
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="footer" runat="server">
    <script id="detailsTemplate" type="text/x-jQuery-tmpl">
        <div class="col-md-3">

            <!-- Profile Image -->
            <div class="box box-primary">
                <div class="box-body box-profile">
                    <img class="profile-user-img img-responsive" src="../../dist/img/lost_found.png" alt="User profile picture">

                    <h3 class="profile-username text-center">${designacao}</h3>

                    <p class="text-muted text-center"></p>
                    <p class="text-muted text-center"></p>
                    <ul class="list-group list-group-unbordered">
                        <li class="list-group-item">
                            <b>Perdido em</b> <a class="pull-right">${data}</a>
                        </li>
                        <li class="list-group-item">
                            <b>Localização</b> <a class="pull-right">${localizacao}</a>
                        </li>

                    </ul>

                    <a href="#" class="btn btn-success btn-block"><i class="fa fa-exchange"></i>Marcar como retornado</a>
                    <a href="#" class="btn btn-danger btn-block"><i class="fa fa-trash"></i>Marcar como descartado</a>
                    <a class="btn btn-warning btn-block"><i class="fa fa-gift"></i>Marcar como doado</a>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->

            <!-- About Me Box -->
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Detalhes do proprietário</h3>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <strong><i class="fa fa-book margin-r-5"></i>Nome</strong>

                    <p class="text-muted">
                        ${ownerName}
             
                    </p>

                    <hr>

                    <strong><i class="fa fa-map-marker margin-r-5"></i>Email</strong>

                    <p class="text-muted">${ownerEmail}</p>

                    <hr>

                    <strong><i class="fa fa-pencil margin-r-5"></i>Contacto</strong>

                    <p>
                        <span class="label label-danger">${contacto}</span>

                    </p>

                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
        </div>
        <!-- /.col -->
        <div class="col-md-9">
            <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#activity" data-toggle="tab">Visão geral</a></li>
                    <li><a href="#settings" data-toggle="tab">Editar</a></li>

                    <li><a href="#timeline" data-toggle="tab">Notas </a></li>
                </ul>
                <div class="tab-content">
                    <div class="active tab-pane" id="activity">
                        <!-- Post -->
                        <div class="post">
                            <div class="user-block">
                                <!-- <img class="img-circle img-bordered-sm" src="../../dist/img/user1-128x128.jpg" alt="user image">-->
                                <span class="username">
                                    <a href="#">${designacao}</a>
                                    <a href="#" class="pull-right btn-box-tool"><i class="fa fa-times"></i></a>
                                </span>
                                <span class="description">${localizacao} - ${data}</span>
                            </div>
                            <!-- /.user-block -->
                            <p>
                                ${descricao}
                 
                            </p>

                        </div>
                        <!-- /.post -->



                    </div>
                    <!-- /.tab-pane -->
                    <div class="tab-pane" id="settings">
                      <div class="row">
                                 <div class="col-sm-6">
                                <fieldset>
                                    <legend>Detalhes do Artigo</legend>

                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Tipo</label>
                                            <asp:DropDownList ID="DropDownList1" Width="100%" CssClass="form-control select2 typeItem" runat="server" DataSourceID="ObjectDataSourceCategorias" DataTextField="designacao" DataValueField="id"></asp:DropDownList>

                                        </div>
                       
                                        <div class="form-group">
                                            <label for="exampleInputPassword1">Localização</label>
                                            <asp:DropDownList ID="DropDownList2" Width="100%" CssClass="form-control select2 locationItem" runat="server" DataSourceID="ObjectDataSourceProvincias" DataTextField="designacao" DataValueField="id"></asp:DropDownList>
                                        </div>

                                        <div class="form-group">
                                            <label>Perdido em:</label>

                                            <div class="input-group date">
                                                <div class="input-group-addon">
                                                    <i class="fa fa-calendar"></i>
                                                </div>
                                                <input type="text" class="form-control pull-right dateLost datepicker">
                                            </div>
                                            <!-- /.input group -->
                                        </div>
                             
                                        <div class="form-group">
                                            <label>Outros Detalhes</label>
                                            <textarea class="form-control outrosDetalhesLost" id="outrosDetalhesLost" rows="5" placeholder="escreva ..."></textarea>
                                        </div>
                              


                                </fieldset>

                            </div>
                            <div class="col-sm-6">
                                <fieldset>
                                    <legend>Detalhes do proprietário</legend>
                       
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Primeiro nome</label>
                                            <input type="text" class="form-control firtname" id="firtname" placeholder="Primeiro nome">
                                        </div>
                         
                                        <div class="form-group">
                                            <label for="exampleInputPassword1">Último nome</label>
                                            <input type="text" class="form-control lastname" id="lastname" placeholder="Último nome">
                                        </div>

                                        <div class="form-group">
                                            <label for="">Email</label>
                                            <input type="email" class="form-control email" id="email" placeholder="email">
                                        </div>
                      
                                        <div class="form-group">
                                            <label for="exampleInputPassword1">Contato</label>
                                            <input type="number" class="form-control contact" id="contato" placeholder="contato">
                                        </div>

                                </fieldset>
                            </div>
                      </div>
                    </div>
                    <!-- /.tab-pane -->
                    <div class="tab-pane" id="timeline">
                        <!-- The timeline -->
                        <ul class="timeline timeline-inverse">
                            <!-- timeline time label -->
                            <li class="time-label">
                                <span class="bg-red">10 Feb. 2014
                        </span>
                            </li>
                            <!-- /.timeline-label -->
                            <!-- timeline item -->
                            <li>
                                <i class="fa fa-envelope bg-blue"></i>

                                <div class="timeline-item">
                                    <span class="time"><i class="fa fa-clock-o"></i>12:05</span>

                                    <h3 class="timeline-header"><a href="#">Support Team</a> sent you an email</h3>

                                    <div class="timeline-body">
                                        Etsy doostang zoodles disqus groupon greplin oooj voxy zoodles,
                        weebly ning heekya handango imeem plugg dopplr jibjab, movity
                        jajah plickers sifteo edmodo ifttt zimbra. Babblely odeo kaboodle
                        quora plaxo ideeli hulu weebly balihoo...
                     
                                    </div>
                                    <div class="timeline-footer">
                                        <a class="btn btn-primary btn-xs">Read more</a>
                                        <a class="btn btn-danger btn-xs">Delete</a>
                                    </div>
                                </div>
                            </li>
                            <!-- END timeline item -->
                            <!-- timeline item -->
                            <li>
                                <i class="fa fa-user bg-aqua"></i>

                                <div class="timeline-item">
                                    <span class="time"><i class="fa fa-clock-o"></i>5 mins ago</span>

                                    <h3 class="timeline-header no-border"><a href="#">Sarah Young</a> accepted your friend request
                      </h3>
                                </div>
                            </li>
                            <!-- END timeline item -->
                            <!-- timeline item -->
                            <li>
                                <i class="fa fa-comments bg-yellow"></i>

                                <div class="timeline-item">
                                    <span class="time"><i class="fa fa-clock-o"></i>27 mins ago</span>

                                    <h3 class="timeline-header"><a href="#">Jay White</a> commented on your post</h3>

                                    <div class="timeline-body">
                                        Take me to your leader!
                        Switzerland is small and neutral!
                        We are more like Germany, ambitious and misunderstood!
                     
                                    </div>
                                    <div class="timeline-footer">
                                        <a class="btn btn-warning btn-flat btn-xs">View comment</a>
                                    </div>
                                </div>
                            </li>
                            <!-- END timeline item -->
                            <!-- timeline time label -->
                            <li class="time-label">
                                <span class="bg-green">3 Jan. 2014
                        </span>
                            </li>
                            <!-- /.timeline-label -->
                            <!-- timeline item -->
                            <li>
                                <i class="fa fa-camera bg-purple"></i>

                                <div class="timeline-item">
                                    <span class="time"><i class="fa fa-clock-o"></i>2 days ago</span>

                                    <h3 class="timeline-header"><a href="#">Mina Lee</a> uploaded new photos</h3>

                                    <div class="timeline-body">
                                        <img src="http://placehold.it/150x100" alt="..." class="margin">
                                        <img src="http://placehold.it/150x100" alt="..." class="margin">
                                        <img src="http://placehold.it/150x100" alt="..." class="margin">
                                        <img src="http://placehold.it/150x100" alt="..." class="margin">
                                    </div>
                                </div>
                            </li>
                            <!-- END timeline item -->
                            <li>
                                <i class="fa fa-clock-o bg-gray"></i>
                            </li>
                        </ul>
                    </div>
                    <!-- /.tab-pane -->
                </div>
                <!-- /.tab-content -->
            </div>
            <!-- /.nav-tabs-custom -->
        </div>
        <!-- /.col -->
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
    </script>
    <script src="Scripts/founddetails.js"></script>
</asp:Content>

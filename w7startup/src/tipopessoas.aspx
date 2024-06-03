<%--<%@ Page Async="true" Title="" Language="C#" MasterPageFile="~/src/principal.Master" AutoEventWireup="true" CodeBehind="tipopessoas.aspx.cs" Inherits="global.tipopessoas" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Title and Top Buttons Start -->
    <div class="page-title-container">
        <div class="row g-0">
            <!-- Title Start -->
            <div class="col-auto mb-3 mb-md-0 me-auto">
                <div class="w-auto sw-md-30">
                    <a href="dashboard.aspx" class="muted-link pb-1 d-inline-block breadcrumb-back">
                        <i data-acorn-icon="chevron-left" data-acorn-size="13"></i>
                        <span class="text-small align-middle">Administrador</span>
                    </a>
                    <h1 class="mb-0 pb-0 display-4" id="title">Tipo de Pessoas</h1>
                </div>
            </div>
            <!-- Title End -->

            <!-- Top Buttons Start -->
            <div class="w-100 d-md-none"></div>
            <div class="col-12 col-sm-6 col-md-auto d-flex align-items-end justify-content-end mb-2 mb-sm-0 order-sm-3">
                <button
                    type="button"
                    class="btn btn-outline-primary btn-icon btn-icon-start ms-0 ms-sm-1 w-100 w-md-auto"
                    data-bs-toggle="modal"
                    data-bs-target="#discountAddModal">
                    <i data-acorn-icon="plus"></i>
                    <span>Criar Tipo</span>
                </button>
                <div class="dropdown d-inline-block d-xl-none">
                </div>
            </div>
        </div>
    </div>
    <!-- Title and Top Buttons End -->

    <!-- Controls Start -->
    <div class="row mb-2">
        <!-- Search Start -->
        <div class="col-sm-12 col-md-5 col-lg-3 col-xxl-2 mb-1">
            <div class="d-inline-block float-md-start me-1 mb-1 search-input-container w-100 shadow bg-foreground">
                <asp:TextBox ID="txtBuscar" runat="server" CssClass="form-control" placeholder="Filtrar"></asp:TextBox>
                <span class="search-magnifier-icon">
                    <i data-acorn-icon="search"></i>
                </span>
                <span class="search-delete-icon d-none">
                    <i data-acorn-icon="close"></i>
                </span>
            </div>
        </div>

        <!-- Discount List Start -->
<%--        <div class="row">
                <div class="col-12 mb-5">
                   <asp:GridView ID="gdvDados" runat="server" Width="100%" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" EmptyDataText="Não há dados para visualizar" DataSourceID="sdsDados" OnRowCommand="gdvDados_RowCommand">
                        <Columns>
                             <asp:TemplateField>
                                 <ItemTemplate>
                                     <asp:Button data-bs-offset="0,3" data-bs-toggle="modal" data-bs-target="#discountAddModal" ID="btnEditar" CssClass="btn btn-icon btn-icon-end btn-primary" CommandArgument='<%# Eval("id") %>' CommandName="Editar" runat="server" Text="Editar" /></ItemTemplate>
                             </asp:TemplateField>
                            <asp:BoundField DataField="id" HeaderText="Cód" SortExpression="id" />
                            <asp:BoundField DataField="nome" HeaderText="Tipo" SortExpression="nome" />
                            <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                        </Columns>
                    </asp:GridView>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle Height="4em" BackColor="White" ForeColor="#a59e9e" CssClass="fix-margin" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                    <asp:SqlDataSource ID="sdsDados" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select * from OniPres_tipoPessoa where status = 'Ativo'"></asp:SqlDataSource>
                </div>
        </div>

    <!-- Discount Add Modal Start -->
    <div class="modal modal-right fade" id="discountAddModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Adicionar Tipo</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label class="form-label">Nome</label>
                        <asp:TextBox ID="txtNomeCliente" runat="server" CssClass="form-control" Required></asp:TextBox>
                    </div>
                    <div class="mb-3 w-100">
                        <label class="form-label">Status</label>
                        <asp:DropDownList ID="ddlStatu" runat="server" CssClass="form-control shadow dropdown-menu-end">
                            <asp:ListItem Text="Ativo" CssClass="dropdown-item"></asp:ListItem>
                            <asp:ListItem Text="Inativo" CssClass="dropdown-item"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="modal-footer border-0">
                    <asp:Label ID="lblMensagem" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:LinkButton ID="btnSalvar" CssClass="btn btn-icon btn-icon-end btn-primary" runat="server" OnClick="btnSalvar_Click"><span>Adicionar</span>
                        <i data-acorn-icon="send"></i>
                    </asp:LinkButton>
                </div>
            </div>
        </div>
    </div>
</asp:Content>--%>

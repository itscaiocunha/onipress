<%@ Page Async="true" Title="" Language="C#" MasterPageFile="~/src/principal.Master" AutoEventWireup="true" CodeBehind="dispositivos.aspx.cs" Inherits="global.dispositivos" %>

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
                    <h1 class="mb-0 pb-0 display-4" id="title">Dispositivos</h1>
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
                    <span>Criar Dispositivos</span>
                </button>
                <div class="dropdown d-inline-block d-xl-none">
                </div>
            </div>
            <!-- Top Buttons End -->
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
    </div>


    <asp:GridView ID="gdvDados" runat="server">
        <HeaderStyle CssClass="text-muted text-small d-lg-none" />
        <RowStyle CssClass="col-11 col-lg-2 d-flex flex-column justify-content-center mb-2 mb-lg-0 order-1 order-lg-1 h-lg-100 position-relative" />
        <Columns>
           
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="sdsDados" runat="server"></asp:SqlDataSource>

    <!-- Discount Add Modal Start -->
    <div class="modal modal-right fade" id="discountAddModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Adicionar Dispositivos</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label class="form-label">Identificação</label>
                        <asp:TextBox ID="txtNome" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Empresa</label>
                        <asp:TextBox ID="txtEmpresa" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Unidade</label>
                        <asp:TextBox ID="txtUnidade" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Bloco</label>
                        <asp:TextBox ID="txtBloco" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3 w-100">
                        <label class="form-label">Status</label>
                        <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-control shadow dropdown-menu-end">
                            <asp:ListItem Text="Ativo" CssClass="dropdown-item"></asp:ListItem>
                            <asp:ListItem Text="Inativo" CssClass="dropdown-item"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="modal-footer border-0">
                    <asp:Label ID="lblMensagem" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:LinkButton ID="btnSalvar" CssClass="btn btn-icon btn-icon-end btn-primary" runat="server" OnClick="btnSalvar_Click">
                        <span>Adicionar</span>
                        <i data-acorn-icon="send"></i>
                    </asp:LinkButton>
                </div>
            </div>
        </div>
    </div>
    <!-- Discount Add Modal End -->
</asp:Content>

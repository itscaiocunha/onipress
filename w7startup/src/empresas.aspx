<%@ Page Async="true" Title="" Language="C#" MasterPageFile="~/src/principal.Master" AutoEventWireup="true" CodeBehind="empresas.aspx.cs" Inherits="global.empresas" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Title and Top Buttons Start -->
    <div class="page-title-container">
        <div class="row g-0">
            <div class="col-auto mb-3 mb-md-0 me-auto">
                <div class="w-auto sw-md-30">
                    <a href="dashboard.aspx" class="muted-link pb-1 d-inline-block breadcrumb-back">
                        <i data-acorn-icon="chevron-left" data-acorn-size="13"></i>
                        <span class="text-small align-middle">Administrador</span>
                    </a>
                    <h1 class="mb-0 pb-0 display-4" id="title">Empresas</h1>
                </div>
            </div>

            <%-- Botão --%>
            <div class="w-100 d-md-none"></div>
            <div class="col-12 col-sm-6 col-md-auto d-flex align-items-end justify-content-end mb-2 mb-sm-0 order-sm-3">
                <button
                    type="button"
                    class="btn btn-outline-primary btn-icon btn-icon-start ms-0 ms-sm-1 w-100 w-md-auto"
                    data-bs-toggle="modal"
                    data-bs-target="#discountAddModal">
                    <i data-acorn-icon="plus"></i>
                    <span>Criar Empresas</span>
                </button>
                <div class="dropdown d-inline-block d-xl-none">
                </div>
            </div>
        </div>
    </div>


    <%-- Filtros --%>
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

    <%-- Grid --%>
    <asp:GridView ID="gdvDados" runat="server">
        <HeaderStyle CssClass="text-muted text-small d-lg-none" />
        <RowStyle CssClass="col-11 col-lg-2 d-flex flex-column justify-content-center mb-2 mb-lg-0 order-1 order-lg-1 h-lg-100 position-relative" />
        <Columns>
           
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="sdsDados" runat="server"></asp:SqlDataSource>

    <!-- Modal -->
    <div class="modal modal-right fade" id="discountAddModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Adicionar Empresas</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label class="form-label">Nome fantasia</label>
                        <asp:TextBox ID="txtNomeCliente" runat="server" CssClass="form-control" Required></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Razão Social</label>
                        <asp:TextBox ID="txtRazaoSocial" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">CPF/CNPJ</label>
                        <asp:TextBox ID="txtCPFCNPJ" runat="server" CssClass="form-control" Required></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Celular</label>
                        <asp:TextBox ID="txtCelular" runat="server" CssClass="form-control" Required></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">E-mail</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Required></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">CEP</label>
                        <asp:TextBox ID="txtCEP" runat="server" CssClass="form-control" Required></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Endereço</label>
                        <asp:TextBox ID="txtEndereco" runat="server" CssClass="form-control" Required></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Num</label>
                        <asp:TextBox ID="txtNum" runat="server" CssClass="form-control" Required></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Bairro</label>
                        <asp:TextBox ID="txtBairro" runat="server" CssClass="form-control" Required></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Complemento</label>
                        <asp:TextBox ID="txtComplemento" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Estado</label>
                        <asp:DropDownList runat="server" ID="ddlUF" CssClass="form-control">
                            <asp:ListItem Text="Acre - AC" Value="AC" />
                            <asp:ListItem Text="Alagoas - AL" Value="AL" />
                            <asp:ListItem Text="Amapá - AP" Value="AP" />
                            <asp:ListItem Text="Amazonas - AM" Value="AM" />
                            <asp:ListItem Text="Bahia - BA" Value="BA" />
                            <asp:ListItem Text="Ceará - CE" Value="CE" />
                            <asp:ListItem Text="Espiríto Santo - ES" Value="ES" />
                            <asp:ListItem Text="Goiás - GO" Value="GO" />
                            <asp:ListItem Text="Maranhão - MA" Value="MA" />
                            <asp:ListItem Text="Mato Grosso - MT" Value="MT" />
                            <asp:ListItem Text="Mato Grosso do Sul - MS" Value="MS" />
                            <asp:ListItem Text="Minas Gerais - MG" Value="MG" />
                            <asp:ListItem Text="Pará - PA" Value="PA" />
                            <asp:ListItem Text="Paraíba - PB" Value="PB" />
                            <asp:ListItem Text="Paraná - PR" Value="PR" />
                            <asp:ListItem Text="Pernambuco - PE" Value="PE" />
                            <asp:ListItem Text="Piauí - PI" Value="PI" />
                            <asp:ListItem Text="Rio de Janeiro - RJ" Value="RJ" />
                            <asp:ListItem Text="Rio Grande do Norte - RN" Value="RN" />
                            <asp:ListItem Text="Rio Grande do Sul - RS" Value="RS" />
                            <asp:ListItem Text="Rondônia - RO" Value="RO" />
                            <asp:ListItem Text="Roraima - RR" Value="RR" />
                            <asp:ListItem Text="Santa Catarina - SC" Value="SC" />
                            <asp:ListItem Text="São Paulo - SP" Value="SP" />
                            <asp:ListItem Text="Sergipe - SE" Value="SE" />
                            <asp:ListItem Text="Tocantins - TO" Value="TO" />
                            <asp:ListItem Text="Distrito Federal - DF" Value="DF" />
                        </asp:DropDownList>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Cidade</label>
                        <asp:TextBox ID="txtCidade" runat="server" CssClass="form-control" Required></asp:TextBox>
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
                    <asp:Button ID="btnSalvar" CssClass="btn btn-icon btn-icon-end btn-primary" runat="server" OnClick="btnSalvar_Click" Text="Adicionar"></asp:Button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

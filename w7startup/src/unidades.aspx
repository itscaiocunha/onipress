<%@ Page Async="true" Title="" Language="C#" MasterPageFile="~/src/principal.Master" AutoEventWireup="true" CodeBehind="unidades.aspx.cs" Inherits="global.unidades" %>

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
                    <h1 class="mb-0 pb-0 display-4" id="title">Unidades</h1>
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
                    <span>Criar Unidades</span>
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
        <!-- Search End -->

        <div class="col-sm-12 col-md-7 col-lg-9 col-xxl-10 text-end mb-1">
            <div class="d-inline-block">
                <!-- Print Button Start -->
                <%--<asp:LinkButton ID="btnImprimir" runat="server" CssClass="btn btn-icon btn-icon-only btn-foreground-alternate shadow"><i data-acorn-icon="print"></i></asp:LinkButton>
                <!-- Print Button End -->

                <!-- Export Dropdown Start -->
                <div class="d-inline-block">
                    <button class="btn p-0" data-bs-toggle="dropdown" type="button" data-bs-offset="0,3">
                        <span
                            class="btn btn-icon btn-icon-only btn-foreground-alternate shadow dropdown"
                            data-bs-delay="0"
                            data-bs-placement="top"
                            data-bs-toggle="tooltip"
                            title="Export">
                            <i data-acorn-icon="download"></i>
                        </span>
                    </button>
                    <div class="dropdown-menu shadow dropdown-menu-end">
                        <asp:LinkButton ID="btnDownloadExcel" runat="server" CssClass="dropdown-item export-excel">Excel</asp:LinkButton>
                        <asp:LinkButton ID="btnDownloadPDf" runat="server" CssClass="dropdown-item export-pdf">Pdf</asp:LinkButton>
                        <asp:LinkButton ID="btnDownloadCSV" runat="server" CssClass="dropdown-item export-cvs">Csv</asp:LinkButton>
                    </div>

                </div>
                <!-- Export Dropdown End -->

                <!-- Length Start -->
                <div class="dropdown-as-select d-inline-block" data-childselector="span">
                    <button class="btn p-0 shadow" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-bs-offset="0,3">
                        <span
                            class="btn btn-foreground-alternate dropdown-toggle"
                            data-bs-toggle="tooltip"
                            data-bs-placement="top"
                            data-bs-delay="0"
                            title="Item Count">10 Items
    </span>
                    </button>
                    <div class="dropdown-menu shadow dropdown-menu-end">
                        <asp:LinkButton ID="btnView5" runat="server" CssClass="dropdown-item">5 Itens</asp:LinkButton>
                        <asp:LinkButton ID="btnView20" runat="server" CssClass="dropdown-item active">20 Itens</asp:LinkButton>
                        <asp:LinkButton ID="btnView50" runat="server" CssClass="dropdown-item">50 Itens</asp:LinkButton>
                    </div>
                </div>--%>
                <!-- Length End -->
            </div>
        </div>
    </div>
    <!-- Controls End -->
    <!-- Discount List Start -->

    <asp:GridView ID="gdvDados" runat="server">
        <HeaderStyle CssClass="text-muted text-small d-lg-none" />
        <RowStyle CssClass="col-11 col-lg-2 d-flex flex-column justify-content-center mb-2 mb-lg-0 order-1 order-lg-1 h-lg-100 position-relative" />
        <Columns>
           
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="sdsDados" runat="server"></asp:SqlDataSource>
    <!-- Discount List End -->

    <!-- Discount Detail Modal Start -->
    <div class="modal modal-right fade" id="discountDetailModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Discount Detail</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label class="form-label">Code</label>
                        <input type="text" class="form-control" value="SUMMERSALE" />
                    </div>
                    <div class="mb-3 w-100">
                        <label class="form-label">Type</label>
                        <select class="select-single-no-search">
                            <option label="&nbsp;"></option>
                            <option value="Fixed Amount">Fixed Amount</option>
                            <option value="Free Shipping">Free Shipping</option>
                            <option value="Percentage" selected>Percentage</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Start</label>
                        <input type="text" class="form-control date-picker-close" value="06/01/2020" />
                    </div>
                    <div class="mb-3">
                        <label class="form-label">End</label>
                        <input type="text" class="form-control date-picker-close" value="07/01/2020" />
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Limit</label>
                        <input type="text" class="form-control" value="5000" />
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Usage</label>
                        <input type="text" class="form-control" value="2723" readonly />
                    </div>
                    <div class="mb-3 w-100">
                        <label class="form-label">Status</label>
                        <select class="select-single-no-search">
                            <option label="&nbsp;"></option>
                            <option value="Active" selected>Active</option>
                            <option value="Inactive">Inactive</option>
                            <option value="Expired">Expired</option>
                        </select>
                    </div>
                </div>
                <div class="modal-footer border-0">
                    <a
                        href="#"
                        class="btn btn-icon btn-icon-only btn-outline-primary"
                        data-delay='{"show":"500", "hide":"0"}'
                        data-bs-toggle="tooltip"
                        data-bs-placement="top"
                        title="Delete"
                        data-bs-dismiss="modal">
                        <i data-acorn-icon="bin"></i>
                    </a>
                    <a href="#" class="btn btn-icon btn-icon-end btn-primary" data-bs-dismiss="modal">
                        <span>Save</span>
                        <i data-acorn-icon="save"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- Discount Detail Modal End -->

    <!-- Discount Add Modal Start -->
    <div class="modal modal-right fade" id="discountAddModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Adicionar Unidades</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label class="form-label">Nome</label>
                        <asp:TextBox ID="txtNomeCliente" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Empresa</label>
                        <asp:TextBox ID="txtEmpresa" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">CEP</label>
                        <asp:TextBox ID="txtCEP" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Endereço</label>
                        <asp:TextBox ID="txtEndereco" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Num</label>
                        <asp:TextBox ID="txtNum" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Bairro</label>
                        <asp:TextBox ID="txtBairro" runat="server" CssClass="form-control"></asp:TextBox>
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
                        <asp:TextBox ID="txtCidade" runat="server" CssClass="form-control"></asp:TextBox>
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
                    <asp:LinkButton ID="btnSalvar" CssClass="btn btn-icon btn-icon-end btn-primary" runat="server"> 
                        <span>Adicionar</span>
                        <i data-acorn-icon="send"></i>
                    </asp:LinkButton>        
                </div>
            </div>
        </div>
    </div>
    <!-- Discount Add Modal End -->
</asp:Content>

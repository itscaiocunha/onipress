<%@ Page Async="true" Title="" Language="C#" MasterPageFile="~/src/principal.Master" AutoEventWireup="true" CodeBehind="pessoas.aspx.cs" Inherits="global.pessoas" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Title and Top Buttons Start -->
    <div class="page-title-container">
        <div class="row g-0">
            <!-- Title Start -->
            <div class="col-auto mb-3 mb-md-0 me-auto">
                <div class="w-auto sw-md-30">
                    <a href="#" class="muted-link pb-1 d-inline-block breadcrumb-back">
                        <i data-acorn-icon="chevron-left" data-acorn-size="13"></i>
                        <span class="text-small align-middle">Administrador</span>
                    </a>
                    <h1 class="mb-0 pb-0 display-4" id="title">Pessoas</h1>
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
                    <span>Criar Pessoa</span>
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
            <div class="col-sm-12 col-md-3 col-lg-2 col-xxl-2 mb-1">
                <asp:LinkButton ID="filtroClick" runat="server"
                    CssClass="btn btn-outline-primary btn-icon btn-icon-start ms-0 ms-sm-1 w-100 w-md-auto" OnClick="lkbFiltro_Click">
                    <i data-acorn-icon="search"></i> Atualizar
                </asp:LinkButton>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-12 mb-5">
            <asp:Label ID="lblDados" runat="server"></asp:Label>
            <asp:GridView ID="gdvDados" Width="100%" runat="server" CellPadding="4" EmptyDataText="Não há dados para visualizar" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataSourceID="sdsDados">
              <AlternatingRowStyle />
              <Columns>
                  <asp:BoundField DataField="nome" HeaderText="Nome" SortExpression="nome" />
                  <asp:BoundField DataField="cpf" HeaderText="CPF" SortExpression="cpf" />                      
                  <asp:BoundField DataField="email" HeaderText="E-mail" SortExpression="email" />                     
                  <asp:BoundField DataField="empresa" HeaderText="Empresa" SortExpression="empresa" />
                  <asp:BoundField DataField="unidade" HeaderText="Unidade" SortExpression="unidade" />
                  <asp:BoundField DataField="bloco" HeaderText="Bloco" SortExpression="bloco" />
                  <asp:BoundField DataField="dispositivo" HeaderText="Dispositivo" SortExpression="dispositivo" />
                  <asp:BoundField DataField="tipo" HeaderText="Tipo de Pessoa" SortExpression="tipo" />
              </Columns>
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
            </asp:GridView>
            <asp:SqlDataSource ID="sdsDados" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand=
                 "select p.nome, p.cpf, p.celular, p.email, p.empresa, p.unidade, p.bloco, p.dispositivo, t.nome as tipo from OniPres_pessoa p
                join OniPres_tipoPessoa t on t.id = p.tipo_acesso">
            </asp:SqlDataSource>
        </div>
      </div>

    <!-- Discount List End -->

    <!-- Discount Add Modal Start -->
    <asp:Panel ID="pnlModal" runat="server" CssClass="modal-right" Visible="false">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Adicionar Pessoas</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <!-- Cadastro -->
                <div class="modal-body">
                    <div class="mb-3">
                        <label class="form-label">Nome completo</label>
                        <asp:TextBox ID="txtNomeCliente" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>       
                    <div class="mb-3">
                        <label class="form-label">Tipo de Pessoas</label>
                        <asp:DropDownList ID="ddlTipo" runat="server" CssClass="form-control shadow dropdown-menu-end" DataSourceID="sdsTipo" DataTextField="nome" DataValueField="id"></asp:DropDownList>
                        <asp:SqlDataSource ID="sdsTipo" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand=
                            "select id, nome from OniPres_tipoPessoa"></asp:SqlDataSource>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">CPF</label>
                        <asp:TextBox ID="txtCPFCNPJ" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Celular</label>
                        <asp:TextBox ID="txtCelular" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">E-mail</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <!-- Local -->
                    <div class="mb-3">
                        <label class="form-label">Condomínio/Empresa</label>
                        <asp:TextBox ID="txtCondominioEmpresa" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Unidade</label>
                        <asp:TextBox ID="txtUnidade" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Bloco</label>
                        <asp:TextBox ID="txtBloco" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Dispositivo</label>
                        <asp:TextBox ID="txtDispositivo" runat="server" CssClass="form-control"></asp:TextBox>
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
    </asp:Panel>
</asp:Content>

<%@ Page Async="true" Title="" Language="C#" MasterPageFile="~/src/geral.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="global.login1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="margin:10px; max-width:100%">
        <div style="margin-bottom: 25px">
  <img src="img/logo/logo.png" class="sw-17" alt="logo" />
</div>
         <div class="mb-3">
     <label class="form-label">E-mail</label>
     <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
 </div>
 <div class="mb-3">
     <label class="form-label">Senha</label>
     <asp:TextBox ID="txtSenha" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
 </div>
        <div class="mb-3" style="text-align:right">
                                   <asp:LinkButton ID="lkbEsqueceuSenha" CssClass="" runat="server">Esqueceu a senha?</asp:LinkButton>
            </div>
                           <asp:LinkButton ID="btnEntrar" CssClass="btn btn-icon btn-icon-end btn-primary" runat="server" OnClick="btnEntrar_Click"> <span>Entrar</span>
<i data-acorn-icon="send"></i></asp:LinkButton>
    </div>
</asp:Content>

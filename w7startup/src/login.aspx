﻿<%@ Page Async="true" Title="" Language="C#" MasterPageFile="~/src/geral.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="global.login1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="margin:10px; max-width:100%">
        <div style="margin-bottom: 25px">
          <img src="img/logo/logo.png" class="sw-17" alt="logo" />
        </div>
         <div class="mb-3">
             <label class="form-label">E-mail</label>
             <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Style="width: 1000px; height: 40px;"></asp:TextBox>
         </div>
         <div class="mb-3">
             <label class="form-label">Senha</label>
             <asp:TextBox ID="txtSenha" TextMode="Password" runat="server" CssClass="form-control" Style="width: 1000px; height: 40px;"></asp:TextBox>
         </div>
        <div class="mb-3" style="text-align:left">
            <asp:LinkButton ID="lkbEsqueceuSenha" OnClick="lkbEsqueceuSenha_Click" CssClass="" runat="server">Esqueceu a senha?</asp:LinkButton>
        </div>
        <div class="mb-3" style="text-align:left">
            <asp:LinkButton ID="lkbCadastro" OnClick="lkbCadastro_Click" CssClass="" runat="server">Não possui conta?</asp:LinkButton>
        </div>
        <asp:Label ID="lblMensagem" runat="server" Text=""></asp:Label>
        <br />
        <asp:LinkButton ID="btnEntrar" CssClass="btn btn-icon btn-icon-end btn-primary" runat="server" OnClick="btnEntrar_Click">
            <span>Entrar</span>
            <i data-acorn-icon="send"></i>
        </asp:LinkButton>
    </div>
</asp:Content>

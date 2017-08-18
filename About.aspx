<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="About.aspx.cs" Inherits="HTML5Samples.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
     <nav class="breadcrumb">
        <a></a> ->
        <a href="NavigateTo/TableOfContents.aspx" rel="up">Table of Contents</a>
    </nav>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">              
    <article>
        <p>
            This is a sample HTML5 application.
        </p>
        <p align="center">
            <img class="GAVSLogo" alt="HTML5" src="Images/GAVS_Logo.png"/> 
        </p>
    </article>
</asp:Content>

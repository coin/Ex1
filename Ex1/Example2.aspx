<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Example2.aspx.cs" Inherits="Ex1.WebForm2" %>
<%@ Register assembly="DevExpress.Web.ASPxGridView.v11.2, Version=11.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridLookup" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxGridView.v11.2, Version=11.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v11.2, Version=11.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <dx:ASPxGridView ID="GridViewEmployees" 
        runat="server"
        DataSourceID="ObjectDataSourceEmployees"
        AutoGenerateColumns="False" 
        KeyFieldName="EmployeeID" >
        <Columns>
            <dx:GridViewCommandColumn VisibleIndex="0">
                <EditButton Visible="True"></EditButton>
                <NewButton Visible="True"></NewButton>
                <DeleteButton Visible="True"></DeleteButton>
                <ClearFilterButton Visible="True"></ClearFilterButton>
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn Caption="Nome" FieldName="FirstName" VisibleIndex="1"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Apelido" FieldName="LastName" VisibleIndex="2"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Morada" FieldName="Address" VisibleIndex="3"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Cidade" FieldName="City" VisibleIndex="4"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Região" FieldName="Region" VisibleIndex="5"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Código Postal" FieldName="PostalCode" VisibleIndex="6"></dx:GridViewDataTextColumn>
        </Columns>
        <Settings ShowFilterRow="True" ShowGroupPanel="True" />
    </dx:ASPxGridView>
    <dx:ASPxGridView ID="ASPxGridEmployeeDetail" runat="server">
    </dx:ASPxGridView>
    <asp:ObjectDataSource ID="ObjectDataSourceEmployees" 
        runat="server" 
        TypeName="Samples.AspNet.ObjectDataSource.NorthwindData"
       
        SelectMethod="GetAllEmployees"
        InsertMethod="InsertEmployee"
        UpdateMethod="UpdateEmployee"
        DeleteMethod="DeleteEmployee">
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSourceEmployeeDetail" runat="server">
    </asp:ObjectDataSource>
</asp:Content>

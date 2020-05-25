<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="WebForm2.aspx.vb" Inherits="WebApplication4.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br/>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EmployeeId" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="EmployeeId" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="EmployeeId" />
            <asp:BoundField DataField="Name" HeaderText="名前" SortExpression="Name" />
            <asp:BoundField DataField="Birthday" HeaderText="誕生日" SortExpression="Birthday" />
            <asp:BoundField DataField="Sales" HeaderText="売上" SortExpression="Sales" />
            <asp:BoundField DataField="TelNo" HeaderText="電話番号" SortExpression="TelNo" />
            <asp:CheckBoxField DataField="Sex" HeaderText="性別" SortExpression="Sex" />
            <asp:BoundField DataField="DepartmentId" HeaderText="部門ID" SortExpression="DepartmentId" />
            <asp:BoundField DataField="ZipCode" HeaderText="住所" SortExpression="ZipCode" />
            <asp:BoundField DataField="TelNo2" HeaderText="TelNo2" SortExpression="TelNo2" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" HeaderText="編集" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ASPTESTConnectionString %>" 
    SelectCommand="SELECT * FROM [Employees]" 
    DeleteCommand="DELETE FROM [Employees] WHERE [EmployeeId] = @EmployeeId" 
    InsertCommand="INSERT INTO [Employees] ([Name], [Birthday], [Sales], [TelNo], [Sex], [DepartmentId], [ZipCode], [TelNo2]) VALUES (@Name, @Birthday, @Sales, @TelNo, @Sex, @DepartmentId, @ZipCode, @TelNo2)" 
    UpdateCommand="UPDATE [Employees] SET [Name] = @Name, [Birthday] = @Birthday, [Sales] = @Sales, [TelNo] = @TelNo, [Sex] = @Sex, [DepartmentId] = @DepartmentId, [ZipCode] = @ZipCode, [TelNo2] = @TelNo2 WHERE [EmployeeId] = @EmployeeId">
    <DeleteParameters>
        <asp:Parameter Name="EmployeeId" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Birthday" Type="DateTime" />
        <asp:Parameter Name="Sales" Type="Decimal" />
        <asp:Parameter Name="TelNo" Type="String" />
        <asp:Parameter Name="Sex" Type="Boolean" />
        <asp:Parameter Name="DepartmentId" Type="Int32" />
        <asp:Parameter Name="ZipCode" Type="String" />
        <asp:Parameter Name="TelNo2" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Birthday" Type="DateTime" />
        <asp:Parameter Name="Sales" Type="Decimal" />
        <asp:Parameter Name="TelNo" Type="String" />
        <asp:Parameter Name="Sex" Type="Boolean" />
        <asp:Parameter Name="DepartmentId" Type="Int32" />
        <asp:Parameter Name="ZipCode" Type="String" />
        <asp:Parameter Name="TelNo2" Type="String" />
        <asp:Parameter Name="EmployeeId" Type="Int32" />
    </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

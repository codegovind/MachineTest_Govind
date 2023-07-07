<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MachineTest_Govind.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <table class="w-100">
        <tr>
            <td style="width: 73px">&nbsp;</td>
            <td style="width: 108px">&nbsp;</td>
            <td style="width: 7px">&nbsp;</td>
            <td style="width: 21px">&nbsp;</td>
            <td style="width: 123px">&nbsp;</td>
            <td style="width: 54px">
                <asp:Button ID="Button1" runat="server" Text="Filter" CssClass="btn btn-secondary" Font-Bold="True" OnClick="Button1_Click"/>
            </td>
        </tr>
        <tr>
            <td style="width: 73px">&nbsp;</td>
            <td style="width: 108px">&nbsp;</td>
            <td style="width: 7px">&nbsp;</td>
            <td style="width: 21px">&nbsp;</td>
            <td style="width: 123px">&nbsp;</td>
            <td style="width: 54px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 73px">&nbsp;</td>
            <td style="width: 108px">Employee Name</td>
            <td style="width: 7px">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td style="width: 21px">&nbsp;</td>
            <td style="width: 123px">Position</td>
            <td style="width: 54px">
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="POSITION" DataValueField="POSITION" CssClass="dropdown-toggle">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 73px">&nbsp;</td>
            <td style="width: 108px">&nbsp;</td>
            <td style="width: 7px">&nbsp;</td>
            <td style="width: 21px">&nbsp;</td>
            <td style="width: 123px">&nbsp;</td>
            <td style="width: 54px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 73px">&nbsp;</td>
            <td style="width: 108px">Department</td>
            <td style="width: 7px">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Department" DataValueField="Department">
                </asp:DropDownList>
            </td>
            <td style="width: 21px">&nbsp;</td>
            <td style="width: 123px">Office</td>
            <td style="width: 54px">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 73px; height: 21px;"></td>
            <td style="width: 108px; height: 21px;"></td>
            <td style="width: 7px; height: 21px;"></td>
            <td style="width: 21px; height: 21px;"></td>
            <td style="width: 123px; height: 21px;"></td>
            <td style="width: 54px; height: 21px;"></td>
        </tr>
        <tr>
            <td style="width: 73px">&nbsp;</td>
            <td style="width: 108px">&nbsp;</td>
            <td style="width: 7px">&nbsp;</td>
            <td style="width: 21px">&nbsp;</td>
            <td style="width: 123px">&nbsp;</td>
            <td style="width: 54px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 73px">&nbsp;</td>
            <td style="width: 108px">&nbsp;</td>
            <td style="width: 7px">&nbsp;</td>
            <td style="width: 21px">&nbsp;</td>
            <td style="width: 123px">&nbsp;</td>
            <td style="width: 54px">&nbsp;</td>
        </tr>
    </table>




    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="spDistinctDept" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox4" DefaultValue="A" Name="ename" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT POSITION FROM tblEmployeemaster"></asp:SqlDataSource>
<br />

    <div>
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" Text="View No of  Records      "></asp:Label>
            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" Font-Bold="True" Font-Size="Large">
                <asp:ListItem Selected="True">10</asp:ListItem>
                <asp:ListItem>50</asp:ListItem>
                <asp:ListItem>100</asp:ListItem>
            </asp:DropDownList>
        </div>
    <div>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="spGettoprecords" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList3" DefaultValue="10" Name="param1" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="EmpId" DataSourceID="SqlDataSource4" CssClass="table table-striped">
        <Columns>
            <asp:BoundField DataField="EmpId" HeaderText="EmpId" ReadOnly="True" SortExpression="EmpId" />
            <asp:BoundField DataField="Employee Name" HeaderText="Employee Name" SortExpression="Employee Name" />
            <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
            <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
            <asp:BoundField DataField="Office" HeaderText="Office" />
            <asp:BoundField DataField="Age" HeaderText="Age" />
            <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
        </Columns>
        </asp:GridView>
        </div>
        </div>

</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="commande.aspx.cs" Inherits="OrganicProduct.commande" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-weight: bold;
            background-color: #FF5050;
        }
        .auto-style2 {
            color: #00FF00;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;&nbsp;
            <asp:Image ID="Image2" runat="server" Height="167px" ImageUrl="https://media.istockphoto.com/vectors/organic-product-watermelon-and-bottle-of-water-vector-id1313245871?b=1&k=6&m=1313245871&s=170667a&w=0&h=OR9k58m_DrAdqtEmbJougviTHdysgicb2s5YNB6-i0I=" style="margin-left: 621px" Width="221px" />
            <p class="auto-style6" style="text-align: center; font-size: xx-large; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2">Bienvenue sur votre premier choix Organic Product</span></p>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <br /><br /><br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" Text="L'article choisie "></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="libelle" DataValueField="libelle" Height="51px" Width="199px" style="margin-left: 93px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" SelectCommand="SELECT [libelle] FROM [t_article]"></asp:SqlDataSource>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="X-Large" Text="L'email du client "></asp:Label>
&nbsp;<asp:TextBox ID="TextBox4" runat="server" Height="29px" Width="449px" style="margin-left: 105px"></asp:TextBox>
            <br /><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Sa quantité  "></asp:Label>
            &nbsp;
            <asp:TextBox ID="TextBox5" runat="server" Height="31px" Width="450px" style="margin-left: 165px"></asp:TextBox>
            <br /><br /><br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Son id"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox6" runat="server" Height="31px" Width="449px" style="margin-left: 242px; margin-right: 0px"></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Height="52px" OnClick="Button5_Click" Text="Ajouter" Width="163px" CssClass="auto-style1" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Height="54px" OnClick="Button6_Click" Text="Modifier" Width="203px" CssClass="auto-style1" style="margin-left: 380px" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Height="54px" OnClick="Button3_Click" Text="Supprimer" Width="201px" CssClass="auto-style1" style="margin-left: 305px" />
            <br /><br /><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br /><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" style="margin-left: 353px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" CellSpacing="2" ForeColor="Black" Height="312px" Width="785px">
                <Columns>
                    <asp:BoundField DataField="Article_commandee" HeaderText="Article_commandee" SortExpression="Article_commandee" />
                    <asp:BoundField DataField="Quantite" HeaderText="Quantite" SortExpression="Quantite" />
                    <asp:BoundField DataField="Client_email" HeaderText="Client_email" SortExpression="Client_email" />
                    <asp:BoundField DataField="Date_commande" HeaderText="Date_commande" SortExpression="Date_commande" />
                    <asp:BoundField DataField="prix_totale" HeaderText="prix_totale" SortExpression="prix_totale" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" SelectCommand="SELECT [Article_commandee], [Quantite], [Client_email], [Date_commande], [prix_totale] FROM [t_commande]"></asp:SqlDataSource>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
    </form>
</body>
</html>
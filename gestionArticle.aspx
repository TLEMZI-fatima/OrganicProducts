<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gestionArticle.aspx.cs" Inherits="OrganicProduct.gestionArticle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            text-align: left;
        }
        .auto-style3 {
            text-align: left;
            color: #00FF00;
        }
        .auto-style4 {
            background-color: #FF5050;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" Height="147px" ImageUrl="https://media.istockphoto.com/vectors/organic-product-watermelon-and-bottle-of-water-vector-id1313245871?b=1&k=6&m=1313245871&s=170667a&w=0&h=OR9k58m_DrAdqtEmbJougviTHdysgicb2s5YNB6-i0I=" Width="259px" OnClick="ImageButton2_Click" style="margin-left: 646px" />
            <p class="auto-style6" style="text-align: center; font-size: xx-large; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style3">Bienvenue sur votre premier choix Organic Product</span></p>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Nom de l'article"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="227px" style="margin-left: 113px"></asp:TextBox>
            <br /><br /><br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Son id"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Height="31px" Width="227px" style="margin-left: 220px"></asp:TextBox>
            <br /><br /><br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Son prix unitaire"></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox3" runat="server" Height="31px" Width="227px" style="margin-left: 114px"></asp:TextBox>
            <br /><br /><br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" Text="La catégorie de l'article   "></asp:Label>
                &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="libelle" DataValueField="libelle" Height="16px" style="margin-left: 17px" Width="229px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" SelectCommand="SELECT [libelle] FROM [t_categorie]"></asp:SqlDataSource>
            <div class="auto-style2">
            <br /><br /><br />
&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" style="margin-left: 33px; background-color: #FF5050;" Text="Ajouter" OnClick="Button1_Click" Height="41px" Width="144px" BackColor="#66CCFF" Font-Bold="True" Font-Size="Large" CssClass="auto-style4" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Modifier" OnClick="Button2_Click" Height="42px" Width="143px" BackColor="#66CCFF" Font-Bold="True" Font-Size="Large" CssClass="auto-style4" style="margin-left: 322px; background-color: #FF5050" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="Supprimer" OnClick="Button3_Click" Height="40px" style="margin-left: 329px; background-color: #FF5050;" Width="137px" BackColor="#66CCFF" Font-Bold="True" Font-Size="Large" CssClass="auto-style4" />
            <br /><br /><br /><br />
            </div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" Height="257px" style="margin-left: 472px" Width="543px" CellSpacing="2" ForeColor="Black">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="libelle" HeaderText="libelle" SortExpression="libelle" />
                    <asp:BoundField DataField="prix_unitaire" HeaderText="prix_unitaire" SortExpression="prix_unitaire" />
                    <asp:BoundField DataField="categorie" HeaderText="categorie" SortExpression="categorie" />
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
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" SelectCommand="SELECT * FROM [t_article]"></asp:SqlDataSource>
            <div class="auto-style2">
            <br /><br /><br /><br />
            </div>
        </div>
    </form>
</body>
</html>








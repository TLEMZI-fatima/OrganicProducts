<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gestionCatégorie.aspx.cs" Inherits="OrganicProduct.gestionCatégorie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: left;
        }
        .auto-style3 {
            background-color: #FF5050;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1" style="width: 1688px">
            <div class="auto-style2">
                <br />
                <asp:ImageButton ID="ImageButton1" runat="server" Height="163px" ImageUrl="https://media.istockphoto.com/vectors/organic-product-watermelon-and-bottle-of-water-vector-id1313245871?b=1&k=6&m=1313245871&s=170667a&w=0&h=OR9k58m_DrAdqtEmbJougviTHdysgicb2s5YNB6-i0I=" Width="233px" style="margin-left: 563px" />
                <p class="auto-style6" style="text-align: center; font-size: xx-large; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style3">Bienvenue sur votre premier choix Organic Product</span></p>
            
                <br /><br /><br /><br /><br /><br /><br />
                <asp:TextBox ID="TextBox1" runat="server" Height="32px" OnTextChanged="TextBox1_TextChanged" Width="242px"></asp:TextBox>
                <br /><br /><br /><br /><br />
                <asp:Button ID="Button1" runat="server" BorderColor="Lime" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" Height="44px" OnClick="Button1_Click" style="margin-left: 22px" Text="Afficher les catégories" Width="262px" CssClass="auto-style3" />
                <asp:Button ID="Button2" runat="server" BorderColor="Lime" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" Height="44px" OnClick="Button2_Click" style="margin-left: 126px" Text="Ajouter une catégorie" Width="253px" CssClass="auto-style3" />
                <asp:Button ID="Button3" runat="server" BorderColor="Lime" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" Height="47px" OnClick="Button3_Click" style="margin-left: 179px" Text="Modifier une catégorie" Width="258px" CssClass="auto-style3" />
                <asp:Button ID="Button4" runat="server" BorderColor="Lime" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" Height="46px" OnClick="Button4_Click" style="margin-left: 166px" Text="Supprimer une catégorie" Width="291px" CssClass="auto-style3" />
                <br /><br /><br /><br /><br />
            </div>
            <asp:GridView ID="GridView2" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" Font-Bold="True" style="margin-left: 393px" Width="676px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" ForeColor="Black" Height="306px">
                <EditRowStyle Font-Size="Large" />
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
&nbsp;&nbsp;
            <br /><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br /><br /><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp; </strong>
            <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
        </div>
    </form>
</body>
</html>

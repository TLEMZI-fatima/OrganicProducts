<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="articles.aspx.cs" Inherits="OrganicProduct.articles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
        .auto-style2 {
            font-size: larger;
            color: #FF5050;
        }
        .auto-style3 {
            font-size: x-large;
        }
        .auto-style4 {
            color: #00FF00;
        }
        .auto-style6 {
            text-align: center;
            height: 166px;
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div class="auto-style6">
            &nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton4" runat="server" Height="143px" ImageUrl="https://media.istockphoto.com/vectors/organic-product-watermelon-and-bottle-of-water-vector-id1313245871?b=1&k=6&m=1313245871&s=170667a&w=0&h=OR9k58m_DrAdqtEmbJougviTHdysgicb2s5YNB6-i0I=" Width="252px" OnClick="ImageButton4_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
            <p style="text-align: center">
            <strong><span class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style4">Bienvenue sur votre premier choix Organic Product</span></span></strong> <strong><span class="auto-style2">&nbsp;</span><asp:Label ID="Label2" runat="server" Text="Label" CssClass="auto-style2" Font-Bold="True" Font-Size="X-Large"></asp:Label>
            </strong>
            </p>
            <br />
            <asp:Panel ID="Panel1" runat="server" Height="481px" Width="1378px">
                <br /><br />
                <asp:ImageButton ID="ImageButton1" runat="server" BorderColor="Lime" BorderStyle="Solid" Height="180px" ImageUrl="https://cdn.pixabay.com/photo/2015/09/02/12/25/basket-918416__340.jpg" OnClick="ImageButton1_Click" PostBackUrl="~/categorie.aspx" style="margin-left: 179px; margin-top: 0px" Width="213px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton2" runat="server" BorderColor="Lime" BorderStyle="Solid" Height="179px" ImageUrl="https://cdn.pixabay.com/photo/2018/09/04/18/55/eat-3654444__340.png" PostBackUrl="~/gestArticle.aspx" style="margin-left: 74px; margin-top: 0px" Width="200px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="line-height: 13.91px;"><span class="auto-style1" style="color: rgb(34, 34, 34); font-family: tahoma, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;"><strong>
                <asp:ImageButton ID="ImageButton3" runat="server" BorderColor="Lime" BorderStyle="Solid" Height="184px" ImageUrl="https://cdn.pixabay.com/photo/2015/02/23/20/53/tomatoes-646645__340.jpg" PostBackUrl="~/commande.aspx" style="margin-left: 96px; margin-top: 0px" Width="225px" />
                </strong></span></span>
                <br /><br />
                <asp:Button ID="Button1" runat="server" Height="58px" style="margin-left: 0px; background-color: #FF5050;" Text="Nos catégories, nos commandes, nos articles" Width="553px" OnClick="Button1_Click" />
                <br /> 
                <br />
            </asp:Panel>
            <asp:GridView ID="grd" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" OnSelectedIndexChanged="grd_SelectedIndexChanged" CellSpacing="2" ForeColor="Black" Height="267px" style="margin-left: 442px; margin-top: 3px" Width="492px">
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
        </div>
    </form>
</body>
</html>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:MultiView ID="CBF110049_MV1" runat="server" ActiveViewIndex="0">
                <asp:View ID="CBF110049_View1" runat="server">
                    <asp:GridView ID="CBF110049_GV1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="Id" DataSourceID="SqlDataSource2" EmptyDataText="沒有資料錄可顯示。" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <Columns>
                            <asp:TemplateField ShowHeader="False">
                                <EditItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="更新"></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消"></asp:LinkButton>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯"></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick="return confirm('你確定要刪除嗎?')" Text="刪除"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="word" HeaderText="word" SortExpression="word" />
                            <asp:BoundField DataField="ch_explanation" HeaderText="ch_explanation" SortExpression="ch_explanation" />
                            <asp:TemplateField HeaderText="sentence" SortExpression="sentence">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" TextMode="MultiLine" Width="98%" runat="server" Text='<%# Bind("sentence") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("sentence") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="sno" HeaderText="sno" SortExpression="sno" />
                            <asp:BoundField DataField="level" HeaderText="level" SortExpression="level" />
                            <asp:BoundField DataField="frequency" HeaderText="frequency" SortExpression="frequency" />
                            <asp:BoundField DataField="weight" HeaderText="weight" SortExpression="weight" />
                        </Columns>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        <RowStyle Wrap="False" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT [Id], [word], [ch_explanation], [sentence], [sno], [level], [weight], [frequency] FROM [gept_words]"></asp:SqlDataSource>
            <br />
            <br />
                    請點選單字來查閱中文解釋<br />
             
                    <asp:DropDownList ID="CBF110049_DDL1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="word" DataValueField="ch_explanation" OnSelectedIndexChanged="CBF110049_DDL1_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:Button ID="CBF110049_PreviousButton0" runat="server" Enabled="False" Text="PreviousButton" />
                    <asp:Button ID="CBF110049_NextButton0" runat="server" Text="NextButton" OnClick="CBF110049_NextButton0_Click" />
                    <asp:Button ID="CBF110049_testBtn0" runat="server" Text="測驗去" OnClick="CBF110049_testBtn0_Click" />
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT top 10 * FROM [gept_words]"></asp:SqlDataSource>
            <br />
                    <asp:Literal ID="CBF110049_cambridge" runat="server"></asp:Literal>
            <br />
            <br />
                    <a href="https://github.com/wfhsiao/web_database_programming/blob/master/gept_words_reflections.html">GitHub心得</a>&nbsp; <a href="http://localhost:55078/gept_words_reflections.html">本地端心得網頁</a>
                </asp:View>
                <asp:View ID="CBF110049_View2" runat="server">
                    <asp:Literal ID="CBF110049_ch_hint" runat="server"></asp:Literal>
                    <asp:TextBox ID="CBF110049_input" runat="server" AutoComplete="off" onclick="this.setSelectionRange(0,999)" onfocus="this.setSelectionRange(0,999)"></asp:TextBox>
                    <asp:Button ID="CBF110049_nextQBtn" runat="server" Text="下一題" />
            <br />
                    請輸入完整單字(底線是用來提示有幾個字元, 如果消失了可以移動滑鼠至方格上來查看.)
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>

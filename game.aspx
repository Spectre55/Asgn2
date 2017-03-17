<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="game.aspx.cs" Inherits="game" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/game.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:DataList ID="DataList1" runat="server" DataSourceID="gameDataSource" ShowFooter="False" ShowHeader="False">
        <ItemTemplate>
            id:
            <asp:Label Text='<%# Eval("id") %>' runat="server" ID="idLabel" /><br />
            gameName:
            <br />
            game:
            

            developerID:
            <asp:Label Text='<%# Eval("developerID") %>' runat="server" ID="developerIDLabel" /><br />
            groupId:
            <asp:Label Text='<%# Eval("groupId") %>' runat="server" ID="groupIdLabel" /><br />
            courseId:
            <asp:Label Text='<%# Eval("courseId") %>' runat="server" ID="courseIdLabel" /><br />
            yr:
            <asp:Label Text='<%# Eval("yr") %>' runat="server" ID="yrLabel" /><br />
            description:
            
            requirements:
            pics:
            <asp:Label Text='<%# Eval("pics") %>' runat="server" ID="picsLabel" /><br />
            video:
            <asp:Label Text='<%# Eval("video") %>' runat="server" ID="videoLabel" /><br />
            firstName:
            <asp:Label Text='<%# Eval("firstName") %>' runat="server" ID="firstNameLabel" /><br />
            lastName:
            <asp:Label Text='<%# Eval("lastName") %>' runat="server" ID="lastNameLabel" /><br />
            id1:
            <asp:Label Text='<%# Eval("id1") %>' runat="server" ID="id1Label" /><br />
            name:
            <asp:Label Text='<%# Eval("name") %>' runat="server" ID="nameLabel" /><br />
            <br />


              <div id="table">
                <tr>
                    <div id="iconDiv"> 
                        <asp:Image src='<%# Eval("icon") %>' runat="server" ID="iconLabel" /> 
                    </div>
                    <div id="titleDiv">
                        <div>
                            <h2><asp:Label Text='<%# Eval("gameName") %>' runat="server" ID="gameNameLabel" /></h2>
                            <h4>by</h4>
                            <p>
                                class <br/> 
                               semester 
                                genres
                            </p>
                        </div>
                    </div>
                </tr>
                <tr>
                    <td> Buttons 
                        <asp:Label Text='<%# Eval("game") %>' runat="server" ID="gameLabel" /><br />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <div class="accordion"> 
                            <asp:ListView ID="ListView1" runat="server">
                                <ItemTemplate>
                                   <li>
                                       <asp:Label ID="AuthorNameLbl" runat="server" Text='<%# Eval("path") %>'></asp:Label>
                                   <li>
                                </ItemTemplate>
                            </asp:ListView>
                               
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <h2>Description:</h2>
                        <p>
                            <asp:Label Text='<%# Eval("description") %>' runat="server" ID="descriptionLabel" /><br />
                        </p>
                        <h3>Requirements:</h3>
                        <p>
                           <asp:Label Text='<%# Eval("requirements") %>' runat="server" ID="requirementsLabel" /><br />
                        </p>

                    </td>
                </tr>
            </div>
        </ItemTemplate>
    </asp:DataList>



    <asp:SqlDataSource ID="gameDataSource" runat="server" ConnectionString='<%$ ConnectionStrings:dbGameConnectionString %>' SelectCommand="SELECT Games.id, Games.gameName, Games.game, Games.icon, Games.developerID, Games.groupId, Games.courseId, Games.yr, Games.description, Games.requirements, Games.pics, Games.video, Developers.firstName, Developers.lastName, Developers.id, Groups.name FROM Games LEFT OUTER JOIN Developers ON Games.developerID = Developers.id LEFT OUTER JOIN Groups ON Games.groupId = Groups.id WHERE (Games.id = @id)">
        <SelectParameters>
            <asp:Parameter Name="id" DbType="Int32"></asp:Parameter>
        </SelectParameters>
    </asp:SqlDataSource>
    
</asp:Content>


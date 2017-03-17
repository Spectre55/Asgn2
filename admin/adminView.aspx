<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="adminView.aspx.cs" Inherits="admin_adminView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../styles/admin.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
          
    <asp:ListView  ID="ListView1" OnItemInserting="ListView1_ItemInserting" OnItemUpdating="ListView1_ItemUpdating" runat="server" DataSourceID="GameDataSource" DataKeyNames="id" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr style="background-color: #FFFFFF; color: #284775;">
                <td>
                    <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                </td>
                <td>
                    <asp:Image src='<%# Eval("icon") %>' runat="server" ID="iconLabel" CssClass="miniIcon" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("course") %>' runat="server" ID="courseLabel" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("firstName") %>' runat="server" ID="firstNameLabel" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("lastName") %>' runat="server" ID="lastNameLabel" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("id") %>' runat="server" ID="idLabel" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("gameName") %>' runat="server" ID="gameNameLabel" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("game") %>' runat="server" ID="gameLabel" />
                </td>

                <td>
                    <asp:Label Text='<%# Eval("yr") %>' runat="server" ID="yrLabel" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("description") %>' runat="server" ID="descriptionLabel" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("requirements") %>' runat="server" ID="requirementsLabel" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("pics") %>' runat="server" ID="picsLabel" />
                </td>
                <td>
                    <video src='<%# Eval("video") %>' runat="server" id="videoLabel" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("groupId") %>' runat="server" ID="groupIdLabel" />

                </td>
            </tr>
        </AlternatingItemTemplate>

        <EditItemTemplate>
            <tr style="background-color: #999999;">
                <td>
                    <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                    <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                </td>
                <td>
                    <asp:TextBox Text='<%# Bind("icon") %>' runat="server" ID="iconTextBox" />
                </td>
                <td>
                    <!--   <asp:TextBox Text='<%# Bind("course") %>' runat="server" ID="courseTextBox" />
                 --><asp:DropDownList CssClass="bg-primary text-white" ID="EditDropDownList" runat="server" DataSourceID="courseDataSource" DataTextField="course" DataValueField="id"></asp:DropDownList>
                </td>
                <td>
                    <asp:TextBox Text='<%# Bind("firstName") %>' runat="server" ID="firstNameTextBox" />
                </td>
                <td>
                    <asp:TextBox Text='<%# Bind("lastName") %>' runat="server" ID="lastNameTextBox" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("id") %>' runat="server" ID="idLabel1" />
                </td>
                <td>
                    <asp:TextBox Text='<%# Bind("gameName") %>' runat="server" ID="gameNameTextBox" />
                </td>
                <td>
                    <asp:TextBox Text='<%# Bind("game") %>' runat="server" ID="gameTextBox" />
                </td>

                <td>
                    <asp:TextBox Text='<%# Bind("yr") %>' runat="server" ID="yrTextBox" />
                </td>
                <td>
                    <asp:TextBox Text='<%# Bind("description") %>' runat="server" ID="descriptionTextBox" />
                </td>
                <td>
                    <asp:TextBox Text='<%# Bind("requirements") %>' runat="server" ID="requirementsTextBox" />
                </td>
                <td>
                    <asp:TextBox Text='<%# Bind("pics") %>' runat="server" ID="picsTextBox" />
                </td>
                <td>
                    <asp:TextBox Text='<%# Bind("video") %>' runat="server" ID="videoTextBox" />
                </td>
                <td>
                    <!--   <asp:TextBox Text='<%# Bind("groupId") %>' runat="server" ID="groupIdTextBox" /></td>
                 -->
                    <asp:DropDownList CssClass="bg-primary text-white" ID="groupEditDropDownList" runat="server" DataSourceID="groupDataSource" DataTextField="name" DataValueField="id"></asp:DropDownList>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" />
                    <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                </td>
                <td>
                    <asp:TextBox Text='<%# Bind("icon") %>' runat="server" ID="iconTextBox" />
                </td>
                <td>
                <!--   <asp:TextBox Text='<%# Bind("course") %>' runat="server" ID="courseTextBox" /></td>
                 -->
                    <asp:DropDownList CssClass="bg-primary text-white" ID="EditDropDownList1" runat="server" DataSourceID="courseDataSource" DataTextField="course" DataValueField="id"></asp:DropDownList>
                <td>
                    <asp:TextBox Text='<%# Bind("firstName") %>' runat="server" ID="firstNameTextBox" />
                </td>
                <td>
                    <asp:TextBox Text='<%# Bind("lastName") %>' runat="server" ID="lastNameTextBox" />
                </td>
                <td>&nbsp;
                </td>
                <td>
                    <asp:TextBox Text='<%# Bind("gameName") %>' runat="server" ID="gameNameTextBox" />
                </td>
                <td>
                    <asp:TextBox Text='<%# Bind("game") %>' runat="server" ID="gameTextBox" />
                </td>

                <td>
                    <asp:TextBox Text='<%# Bind("yr") %>' runat="server" ID="yrTextBox" />
                </td>
                <td>
                    <asp:TextBox Text='<%# Bind("description") %>' runat="server" ID="descriptionTextBox" />
                </td>
                <td>
                    <asp:TextBox Text='<%# Bind("requirements") %>' runat="server" ID="requirementsTextBox" />
                </td>
                <td>
                    <asp:TextBox Text='<%# Bind("pics") %>' runat="server" ID="picsTextBox" />
                </td>
                <td>
                    <asp:TextBox Text='<%# Bind("video") %>' runat="server" ID="videoTextBox" />
                </td>
                <td>
                    <!--  <asp:TextBox Text='<%# Bind("groupId") %>' runat="server" ID="groupIdTextBox" />
                 -->
                    <asp:DropDownList CssClass="bg-primary text-white" ID="groupInsertDropDownList" runat="server" DataSourceID="groupDataSource" DataTextField="name" DataValueField="id"></asp:DropDownList>
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color: #E0FFFF; color: #333333;">
                <td>
                    <asp:Button CssClass="delBtn" runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                    <asp:Button CssClass="editBtn" runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />

                </td>
                <td>
                    <asp:Image Src='<%# Eval("icon") %>' runat="server" ID="iconLabel" CssClass="miniIcon" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("course") %>' runat="server" ID="courseLabel" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("firstName") %>' runat="server" ID="firstNameLabel" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("lastName") %>' runat="server" ID="lastNameLabel" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("id") %>' runat="server" ID="idLabel" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("gameName") %>' runat="server" ID="gameNameLabel" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("game") %>' runat="server" ID="gameLabel" />
                </td>

                <td>
                    <asp:Label Text='<%# Eval("yr") %>' runat="server" ID="yrLabel" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("description") %>' runat="server" ID="descriptionLabel" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("requirements") %>' runat="server" ID="requirementsLabel" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("pics") %>' runat="server" ID="picsLabel" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("video") %>' runat="server" ID="videoLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("groupId") %>' runat="server" ID="groupIdLabel" /></td>
            </tr>


        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table runat="server" id="itemPlaceholderContainer" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;" border="1">
                            <tr runat="server" style="background-color: #E0FFFF; color: #333333;">
                                <th runat="server"></th>
                                <th runat="server">Icon</th>
                                <th runat="server">course</th>
                                <th runat="server">First Name</th>
                                <th runat="server">Last Name</th>
                                <th runat="server">id</th>
                                <th runat="server">Game Name</th>
                                <th runat="server">Game Location</th>

                                <th runat="server">Year</th>
                                <th runat="server">Description</th>
                                <th runat="server">Requirements</th>
                                <th runat="server">Pictures Location</th>
                                <th runat="server">Video</th>
                                <th runat="server">Group Name</th>
                            </tr>
                            <tr runat="server" id="itemPlaceholder"></tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF"></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color: #E2DED6; font-weight: bold; color: #333333;">
                <td>
                    <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />

                </td>
                <td>
                    <asp:Image src='<%# Eval("icon") %>' runat="server" ID="iconLabel" CssClass="miniIcon" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("course") %>' runat="server" ID="courseLabel" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("firstName") %>' runat="server" ID="firstNameLabel" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("lastName") %>' runat="server" ID="lastNameLabel" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("id") %>' runat="server" ID="idLabel" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("gameName") %>' runat="server" ID="gameNameLabel" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("game") %>' runat="server" ID="gameLabel" />
                </td>

                <td>
                    <asp:Label Text='<%# Eval("yr") %>' runat="server" ID="yrLabel" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("pics") %>' runat="server" ID="picsLabel" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("video") %>' runat="server" ID="videoLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("groupId") %>' runat="server" ID="groupIdLabel" /></td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>


    <asp:SqlDataSource runat="server" ID="courseDataSource" ConnectionString='<%$ ConnectionStrings:dbGameConnectionString %>' SelectCommand="SELECT [id], [course] FROM [Courses]"></asp:SqlDataSource>

    <asp:SqlDataSource runat="server" ID="groupDataSource" ConnectionString='<%$ ConnectionStrings:dbGameConnectionString %>' SelectCommand="SELECT [id], [name] FROM [Groups]"></asp:SqlDataSource>


    <asp:SqlDataSource runat="server" ID="GameDataSource" ConnectionString='<%$ ConnectionStrings:dbGameConnectionString %>' SelectCommand="SELECT Courses.course, Developers.firstName, Developers.lastName, Games.id, Games.gameName, Games.game, Games.icon, Games.yr, Games.description, Games.requirements, Games.pics, Games.video, Games.groupId FROM Games LEFT OUTER JOIN Courses ON Games.courseId = Courses.id LEFT OUTER JOIN Developers ON Games.developerID = Developers.id" DeleteCommand="DELETE FROM Games" InsertCommand="INSERT INTO Games(id, gameName, game, icon, yr, description, requirements, pics, video) VALUES (@a, @b, @c, @d , @e, @f, @g, @h, @i)" UpdateCommand="UPDATE Games SET gameName = @gamename, game = @game, icon = @icon, yr = @yr, courseId = @courseid, description = @description, requirements = @requirements, pics = @pics, video = @video">
        <InsertParameters>
            <asp:Parameter Name="gamename"></asp:Parameter>
            <asp:Parameter Name="game"></asp:Parameter>
            <asp:Parameter Name="icon"></asp:Parameter>
            <asp:Parameter Name="yr"></asp:Parameter>
            <asp:Parameter Name="courseid"></asp:Parameter>
            <asp:Parameter Name="description"></asp:Parameter>
            <asp:Parameter Name="requirements"></asp:Parameter>
            <asp:Parameter Name="pics"></asp:Parameter>
            <asp:Parameter Name="video"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="gamename"></asp:Parameter>
            <asp:Parameter Name="game"></asp:Parameter>
            <asp:Parameter Name="icon"></asp:Parameter>
            <asp:Parameter Name="yr"></asp:Parameter>
            <asp:Parameter Name="courseid"></asp:Parameter>
            <asp:Parameter Name="description"></asp:Parameter>
            <asp:Parameter Name="requirements"></asp:Parameter>
            <asp:Parameter Name="pics"></asp:Parameter>
            <asp:Parameter Name="video"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>


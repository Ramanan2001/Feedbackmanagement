<%@ Page Title="" Language="C#" MasterPageFile="~/FeedbackMasterPage.Master" AutoEventWireup="true" CodeBehind="FBAdmin.aspx.cs" Inherits="Feedback.FBAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <%-- <style type="text/css">
        .auto-style11 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
        <td>
     <table>

                            <tr>
                                <td align="right">Login ID</td>
                                <td class="auto-style11">
                                    <asp:TextBox ID="TextBox1" runat="server" Width="232px"></asp:TextBox></td>
                            </tr>
                            
                            <tr>
                                <td align="center" class="auto-style1">Password</td>
                                <td class="auto-style11">
                                    <asp:TextBox ID="TextBox2" runat="server" Width="232px"></asp:TextBox></td>
                            </tr>
                            <tr Align="center">
                                <td class="auto-style10" Align="center" colspan="2">
                                    <asp:Button ID="Button1" runat="server" Text="Cancel" />
                                    <asp:Button ID="Button2" runat="server" Text="Login" /></td>
                            </tr>
                            <tr >
                                <td colspan="2"><asp:HyperLink ID="HyperLink1" runat="server">New Registration?</asp:HyperLink></td>
                            </tr>
                            </table>
            </td>
          
        
            </tr>
        </table>--%>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <div class="card text-white bg-dark">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img width="200px"  src="feedback/adminuser.png" />
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h3>Admin Login</h3>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" placeholder="Admin ID" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                          <asp:TextBox CssClass="form-control" ID="TextBox2" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <asp:Button class="btn-block btn btn-success btn-lg" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div>
                        <a href="FBHome.aspx"><--Back to Home/a><br><br>
                    </div>
                </div>
            </div>

        </div>
    </section>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/FeedbackMasterPage.Master" AutoEventWireup="true" CodeBehind="FBStaff.aspx.cs" Inherits="Feedback.FBStaff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--     <table class="tab">

                            <tr>
                                <td class="auto-style1">Login ID</td>
                                <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                                
                            </tr>
                            <br />
                            <tr>
                                <td class="auto-style1">Password</td>
                               <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr Align="center">
                                <td class="auto-style11"  colspan="2">
                                    <asp:Button ID="Button1" runat="server" Text="Cancel" />
                                    <asp:Button ID="Button2" runat="server" Text="Login" /></td>
                            </tr>
                            <tr >
                                <td colspan="2" class="auto-style16"><asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#333333" NavigateUrl="~/StaffReg.aspx">New Registration?</asp:HyperLink></td>
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
                                        <img width="200px" src="feedback/generaluser.png" />
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h3>Staff Login</h3>
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
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" placeholder="Staff E-mail ID" runat="server"></asp:TextBox>
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
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <a href="StaffRegist.aspx"><input class="btn-block btn-lg btn btn-info" id="Button2" type="button" value="Sign Up" /></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div>
                        <a href="FBHome.aspx"><--Back to Home</a><br><br>
                    </div>
                </div>
            </div>

        </div>
    </section>
</asp:Content>

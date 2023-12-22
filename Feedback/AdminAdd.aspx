<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminAdd.aspx.cs" Inherits="Feedback.AdminAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
                                        <h3>Add Admin</h3>
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
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" placeholder="Mail ID" runat="server"></asp:TextBox>
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
                                        <asp:Button class="btn-block btn btn-success btn-lg" ID="Button1" runat="server" Text="Submit"  />
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


</asp:Content>

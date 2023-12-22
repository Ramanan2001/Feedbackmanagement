<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminAddDelStaff.aspx.cs" Inherits="Feedback.AdminAddDelStaff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-6 ">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img width="150px" src="feedback/generaluser.png" />
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                    <h3>Staff Profile</h3>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                    <hr>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>First Name</label>
                                        <asp:TextBox CssClass="form-control" placeholder="Full Name" ID="TextBox1" runat="server"></asp:TextBox>
                                    </div>
                                    
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Last Name</label>
                                        <asp:TextBox CssClass="form-control" placeholder="Full Name" ID="TextBox3" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Email ID</label>
                                        <label>Contact</label>
                                        <div class="form-group">
                                        <asp:TextBox CssClass="form-control" placeholder="Mail ID" ID="TextBox2" runat="server" TextMode="SingleLine"></asp:TextBox>
                                        <asp:Button CssClass="btn btn-primary btn-info"  ID="Button1" runat="server" Text="Go" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Contact</label>
                                        <div class="input-group">
                                        <asp:TextBox CssClass="form-control" placeholder="Contact" ID="TextBox4" runat="server" TextMode="Number"></asp:TextBox>
                                         <div class="form-group">
                                        <asp:Button CssClass="btn btn-primary btn-info"  ID="Button4" runat="server" Text="Go" />
                                        </div>
                                    </div>
                                    </div>
                                </div>
                             </div>
                            
                            <div class="row">
                                <div class="col">
                                        <label>Address</label>
                                            <asp:TextBox CssClass="form-control" placeholder="" ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                    <hr>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <asp:Button class="btn-block btn btn-warning btn-lg" ID="Button2" runat="server" Text="Edit" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <asp:Button class="btn-block btn btn-danger btn-lg" ID="Button3" runat="server" Text="Delete" />
                                    </div>
                                </div>
                          </div>
                            <div>
                        <a href="FBHome.aspx"><--Back to Home</a><br><br>
                    </div>
                            </div>
                    </div>
                    </div>
            
                <div class="col-md-6 ">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>

                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                    <h3>Your Details</h3>
                                        <asp:Label  CssClass="badge rounded-pill text-bg-info" ID="Label2" runat="server" Text="Satuts"></asp:Label>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                    <hr>
                                    </center>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <asp:GridView  ID="GridView1" CssClass="table table-striped table-bordered" runat="server"></asp:GridView>

                                </div>
                            </div>
                            
                           
                       </div>
                </div>

            </div>
                </div>
        
        
            </div>
    </section>
</asp:Content>

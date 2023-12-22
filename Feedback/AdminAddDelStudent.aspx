<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminAddDelStudent.aspx.cs" Inherits="Feedback.AdminAddDelStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
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
                                    <h3>Student Profile</h3>
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
                                        <label>Full Name</label>
                                        <asp:TextBox CssClass="form-control" placeholder="Full Name" ID="TextBox1" runat="server"></asp:TextBox>
                                    </div>
                                    
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Date of Birth</label>
                                        <asp:TextBox CssClass="form-control" placeholder="" ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Father Name</label>
                                        <asp:TextBox CssClass="form-control" placeholder="Full Name" ID="TextBox3" runat="server"></asp:TextBox>
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
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Timing</label>
                                            <asp:DropDownList CssClass="form-control" ID="DropDownList5" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>9AM-10AM</asp:ListItem>
                                                <asp:ListItem>10AM-11AM</asp:ListItem>
                                                <asp:ListItem>11AM-12PM</asp:ListItem>
                                                <asp:ListItem>12PM-1PM</asp:ListItem>
                                                <asp:ListItem>1PM-2PM</asp:ListItem>
                                                <asp:ListItem>3PM-4PM</asp:ListItem>
                                                <asp:ListItem>4PM-5PM</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Staff Name</label>
                                            <asp:DropDownList CssClass="form-control" ID="DropDownList6" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Course</label>
                                            <asp:TextBox CssClass="form-control" placeholder="" ID="TextBox10" runat="server" TextMode="Number"></asp:TextBox>
                                        </div>
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
                       </div>
                </div>
                    <div>
                        <a href="FBHome.aspx"><--Back to Home</a><br><br>
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

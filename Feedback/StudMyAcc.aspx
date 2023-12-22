<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMaster.Master" AutoEventWireup="true" CodeBehind="StudMyAcc.aspx.cs" Inherits="Feedback.StudMyAcc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-8 mx-auto ">
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
                                    <h3>Your Account</h3>
                                        <span>Account Status - </span>
                                        <asp:Label  CssClass="badge rounded-pill text-bg-info" ID="Label1" runat="server" Text="Satuts"></asp:Label>
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
                                        <asp:TextBox CssClass="form-control" placeholder="Full Name" ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
                                    </div>
                                    
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Date of Birth</label>
                                        <asp:TextBox CssClass="form-control" placeholder="" ID="TextBox2" runat="server" TextMode="Date" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Father Name</label>
                                        <asp:TextBox CssClass="form-control" placeholder="Full Name" ID="TextBox3" runat="server" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Contact</label>
                                        <asp:TextBox CssClass="form-control" placeholder="Contact" ID="TextBox4" runat="server" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                             </div>
                            <div class="row"> 
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>State</label>
                                            <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server" ReadOnly="True">
                                                <asp:ListItem>Select</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>District</label>
                                            <asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server" ReadOnly="True">
                                                <asp:ListItem>Select</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Pincode</label>
                                            <asp:TextBox CssClass="form-control" placeholder="" ID="TextBox6" runat="server" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                        </div>
                                    </div>
                                 </div>
                            <div class="row"> 
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Timing</label>
                                            <asp:DropDownList CssClass="form-control" ID="DropDownList5" runat="server" ReadOnly="True">
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
                                            <asp:DropDownList CssClass="form-control" ID="DropDownList6" runat="server" ReadOnly="True">
                                                <asp:ListItem>Select</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Course</label>
                                            <asp:TextBox CssClass="form-control" placeholder="" ID="TextBox10" runat="server" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                        </div>
                                    </div>
                                 </div>
                            <div class="row">
                                <div class="col">
                                        <label>Address</label>
                                            <asp:TextBox CssClass="form-control" placeholder="" ID="TextBox5" runat="server" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
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
                                    <center>
                                    <h3>Login Details</h3>
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
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>User ID</label>
                                        <asp:TextBox CssClass="form-control" placeholder="E-mail ID" ID="TextBox7" runat="server" ReadOnly="True"></asp:TextBox>
                                    </div>
                                    
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Password</label>
                                        <asp:TextBox CssClass="form-control" placeholder="Password" ID="TextBox8" runat="server" TextMode="Password" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                            
                            <div class="col-md-4">
                                    <div class="form-group">
                                        <label>New Password</label>
                                        <asp:TextBox CssClass="form-control" placeholder="New Password" ID="TextBox9" runat="server" ></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <asp:Button CssClass="btn-block btn-lg btn btn-info"  ID="Button1" runat="server" Text="Update" />
                                    </div>
                                </div>
                            </div>
                       </div>
                </div>
                    <div>
                        <a href="StudHome.aspx"><--Back to Home</a><br><br>
                    </div>
            </div>
        </div>
        </div>
        
    </section>
</asp:Content>

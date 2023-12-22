<%@ Page Title="" Language="C#" MasterPageFile="~/FeedbackMasterPage.Master" AutoEventWireup="true" CodeBehind="StudentReg.aspx.cs" Inherits="Feedback.NewReg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- <style>
        th.auto-style6{
            text-align:center;
            width:70%;
            
        }
        .auto-style5{
             padding:10px;
             margin-left:20px;
        }
        .button{
            align-content:center;
           
        }
        /*table{
            align-content:center;
            padding:5px;
            border-width:4px;
            border-style:solid;
            border-color:red;
            

        }*/
        .tab{
            align-content:center;
            border-collapse:separate;
            border-spacing:10px;
            width:50%;
            margin: 0 auto;
            border-style:solid;
            border-color:black;
        }
       
    .auto-style11 {
        margin-left: 0px;
    }
       
    </style>
     <table class="tab">
                                <h2><b>New Registration</b></h2>
         <tr>
                                    <th  class="auto-style6">
                                        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label></th>
                                    <th class="auto-style5">
                                        <asp:TextBox ID="TextBox3" runat="server" Width="159px"></asp:TextBox></th>
                                </tr>
                                <tr>
                                    <th class="auto-style6">
                                        <asp:Label ID="Label2" runat="server" Text="Phone Number"></asp:Label></th>
                                    <th class="auto-style5">
                                        <asp:TextBox ID="TextBox4" runat="server" Width="159px"></asp:TextBox></th>
                                </tr>
         <tr>
                                    <th class="auto-style6">
                                        <asp:Label ID="Label8" runat="server" Text="Class Timing"></asp:Label></th>
                                    <th class="auto-style5">
                                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="auto-style11">
                                            <asp:ListItem>9-10am</asp:ListItem>
                                            <asp:ListItem>10-11am</asp:ListItem>
                                            <asp:ListItem>11-12pm</asp:ListItem>
                                            <asp:ListItem>12-1pm</asp:ListItem>
                                            <asp:ListItem>2-3pm</asp:ListItem>
                                        </asp:DropDownList></th>
                                </tr>
                                <tr>
                                    <th class="auto-style6">
                                        <asp:Label ID="Label3" runat="server" Text="Year of Passing"></asp:Label></th>
                                    <th class="auto-style5">
                                        <asp:TextBox ID="TextBox5" runat="server" Width="159px" CssClass="auto-style11"></asp:TextBox></th>
                                </tr>
                                <tr>
                                    <th class="auto-style6">
                                        <asp:Label ID="Label4" runat="server" Text="Mail ID"></asp:Label></th>
                                    <th class="auto-style5">
                                        <asp:TextBox ID="TextBox6" runat="server" Width="159px"></asp:TextBox></th>
                                </tr>
                                <tr>
                                    <th class="auto-style6">
                                        <asp:Label ID="Label5" runat="server" Text="Course"></asp:Label></th>
                                    <th class="auto-style5">
                                        <asp:TextBox ID="TextBox7" runat="server" Width="159px"></asp:TextBox></th>
                                </tr>
                                <tr>
                                    <th class="auto-style6">
                                        <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label></th>
                                    <th class="auto-style5">
                                        <asp:TextBox ID="TextBox8" runat="server" Width="159px"></asp:TextBox></th>
                                </tr>
                                <tr>
                                    <th class="auto-style6">
                                        <asp:Label ID="Label7" runat="server" Text="Confirm Password"></asp:Label></th>
                                    <th class="auto-style5">
                                        <asp:TextBox ID="TextBox9" runat="server" Width="159px"></asp:TextBox></th>
                                </tr>
                                <tr  align="center">
                                    <td colspan="2" class="auto-style5"><asp:Button ID="Button3" runat="server" Text="Register" /></td>
                                </tr>
                            </table>
                         --%>   

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
                                    <h3>Student Registration</h3>
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
                                        <asp:TextBox CssClass="form-control" placeholder="Contact" ID="TextBox4" runat="server" TextMode="Number"></asp:TextBox>
                                    </div>
                                </div>
                             </div>
                            <div class="row"> 
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>State</label>
                                            <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Course Name</label>
                                            <asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Pincode</label>
                                            <asp:TextBox CssClass="form-control" placeholder="" ID="TextBox6" runat="server" TextMode="Number"></asp:TextBox>
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
                                            <label>Mode of class</label>
                                            <asp:DropDownList CssClass="form-control" ID="DropDownList3" runat="server">
                                            <asp:ListItem>Online</asp:ListItem>
                                            <asp:ListItem>Offline</asp:ListItem>
                                            </asp:DropDownList>
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
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>User ID</label>
                                        <asp:TextBox CssClass="form-control" placeholder="E-mail ID" ID="TextBox7" runat="server"></asp:TextBox>
                                    </div>
                                    
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Password</label>
                                        <asp:TextBox CssClass="form-control" placeholder="Password" ID="TextBox8" runat="server" TextMode="Password"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <asp:Button class="btn-block btn btn-success btn-lg" ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />
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

<%@ Page Title="" Language="C#" MasterPageFile="~/staffMaster.Master" AutoEventWireup="true" CodeBehind="StaffStudentDetails.aspx.cs" Inherits="Feedback.StaffStudentDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container">
            <div class="row">
                <div class="col ">
                    <div class="card">
                        <div class="card-body">
                           <div class="row">
                                <div class="col-md-5">
                                    <center>
                                    <h3>Students</h3>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <img width="100px" src="" />
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
                                        <label> ID</label>
                                        <div class="input-group">
                                            <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>9AM-10AM</asp:ListItem>
                                                <asp:ListItem>10AM-11AM</asp:ListItem>
                                                <asp:ListItem>11AM-12PM</asp:ListItem>
                                                <asp:ListItem>12PM-1PM</asp:ListItem>
                                                <asp:ListItem>1PM-2PM</asp:ListItem>
                                                <asp:ListItem>3PM-4PM</asp:ListItem>
                                                <asp:ListItem>4PM-5PM</asp:ListItem>
                                            </asp:DropDownList>
                                        <div class="form-group">
                                        <asp:Button CssClass="btn btn-primary btn-info"  ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                        </div>
                                    </div>
                                    </div>
                                    
                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <label>Student Name</label>
                                       <div class="input-group">
                                        <asp:TextBox CssClass="form-control" placeholder="Name" ID="TextBox1" runat="server"></asp:TextBox>
                                        <div class="form-group">
                                        <asp:Button CssClass="btn btn-primary btn-info"  ID="Button2" runat="server" Text="Go" />
                                        </div>
                                    </div>
                                        </div>
                                    </div>
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
                                        <img width="150px" src="" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                    <h3>Student List</h3>
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

                    <div>
                        <a href="Home.aspx"><--Back to Home</a><br><br>
                    </div>
            </div>
       
        
    </section>
</asp:Content>

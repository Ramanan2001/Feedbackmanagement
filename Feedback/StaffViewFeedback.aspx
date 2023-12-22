<%@ Page Title="" Language="C#" MasterPageFile="~/staffMaster.Master" AutoEventWireup="true" CodeBehind="StaffViewFeedback.aspx.cs" Inherits="Feedback.StaffViewFeedback" %>
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
                                <div class="col">
                                    <center>
                                        <img width="150px" src="" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <center>
                                    <h3>View Feedback</h3>
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
                        <a href="staffHome.aspx"><--Back to Home</a><br><br>
                    </div>
            </div>
       
        
    </section>
</asp:Content>

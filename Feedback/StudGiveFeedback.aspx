<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMaster.Master" AutoEventWireup="true" CodeBehind="StudGiveFeedback.aspx.cs" Inherits="Feedback.StudGivveFeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container-fluid">
            <div class="row">
                <div class="col">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h2>FEEDBACK</h2>
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
                            <div>
                            <div class="row">
                                <div class="col">
                                    <asp:Label ID="Label1" runat="server" AssociatedControlID="RatingList" Text="Label">How would you rate the overall effectiveness of the course content delivered by the trainer?</asp:Label>
                                </div>
                            </div>
                        <div class="row">
                            <div class="col">
                                <asp:RadioButtonList ID="RatingList"  CssClass="btn-group" RepeatDirection="Horizontal" runat="server">
                                    <asp:ListItem Text="Worst" Value="1" CssClass="mr-3"/>
                                    <asp:ListItem Text="Poor" Value="2" CssClass="mr-2"/>
                                    <asp:ListItem Text="Average" Value="3" CssClass="mr-2" />
                                    <asp:ListItem Text="Good" Value="4" CssClass="mr-2"/>
                                    <asp:ListItem Text="Excellent" Value="5" CssClass="mr-2" />
                                </asp:RadioButtonList>
                            </div>
                        </div>
                      </div>
                            <div>
                            <div class="row">
                                <div class="col">
                                   <asp:Label ID="Label2" runat="server" AssociatedControlID="RatingList" Text="Label">Did the trainer effectively communicate complex concepts and make the course material understandable?</asp:Label>
                                </div>
                            </div>
                        <div class="row">
                            <div class="col">
                                <asp:RadioButtonList ID="RadioButtonList1"  CssClass="btn-group" RepeatDirection="Horizontal" runat="server">
                                    <asp:ListItem Text="Worst" Value="1" CssClass="mr-3"/>
                                    <asp:ListItem Text="Poor" Value="2" CssClass="mr-2"/>
                                    <asp:ListItem Text="Average" Value="3" CssClass="mr-2" />
                                    <asp:ListItem Text="Good" Value="4" CssClass="mr-2"/>
                                    <asp:ListItem Text="Excellent" Value="5" CssClass="mr-2" />
                                </asp:RadioButtonList>
                            </div>
                        </div>
                      </div>
                            <div>
                            <div class="row">
                                <div class="col">
                                   <asp:Label ID="Label3" runat="server" AssociatedControlID="RatingList" Text="Label">To what extent did the trainer encourage student engagement and participation during the course?</asp:Label>
                                </div>
                            </div>
                        <div class="row">
                            <div class="col">
                                <asp:RadioButtonList ID="RadioButtonList2"  CssClass="btn-group" RepeatDirection="Horizontal" runat="server">
                                    <asp:ListItem Text="Not at All" Value="1" CssClass="mr-3"/>   
                                    <asp:ListItem Text="Slightly" Value="2" CssClass="mr-2"/>
                                    <asp:ListItem Text="Average" Value="3" CssClass="mr-2" />
                                    <asp:ListItem Text="Quite a Bit" Value="4" CssClass="mr-2"/>
                                    <asp:ListItem Text="Very Much" Value="5" CssClass="mr-2" />
                                </asp:RadioButtonList>
                            </div>
                        </div>
                      </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <center>
                                        <asp:Button CssClass="btn btn-lg btn-success d-grid gap-2 col-6 mx-auto"  ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                                        </center>
                                    </div>
                                </div>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


</asp:Content>

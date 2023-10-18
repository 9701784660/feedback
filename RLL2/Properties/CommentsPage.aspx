﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CommentsPage.aspx.cs" Inherits="RLL2.Properties.CommentsPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <div class="container mt-4">
    <div class="card w-50 mx-auto" style="left: 0px; top: 0px; height: 325px; width: 53%">
        <div class="card-body">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Customer Reviews<br />
            <table class="table">
                <tr>
                    <td>User Name</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Rating</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                      
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Rating is Required" ControlToValidate="TextBox1" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Rating Must be 1-10" ForeColor="#CC0000" ValidationExpression="^(?:[1-9]|10)$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Comments</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Comment is Required" ControlToValidate="TextBox2" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
             
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Upload" OnClick="Button1_Click" />
                        <br />
                        <asp:Label ID="LblMsg" runat="server" CssClass="mt-2"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </div>
       
</div>
<br />
<br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>


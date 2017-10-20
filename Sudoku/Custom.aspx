﻿<%@ Page Title="Custom Puzzles" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Custom.aspx.cs" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="container">
        <h1 class="text-center">Custom Puzzles</h1>
        <%-- Custom Puzzles Div --%>
        <div class="col-md-offset-4 col-md-4">
            <table class="custom-table">
                <% for (int i = 0; i < 9; i++)
                    { %>
                <tr>
                    <% for (int j = 0; j < 9; j++)
                        {
                            string style = "";
                            if(j == 2 || j == 5)
                            {
                                style += "border-right:solid 5px;";
                            }
                            if(i== 2 || i == 5)
                            {
                                style += "border-bottom:solid 5px;";
                            }
                            %>
                        <td style="<%=style %>">
                            <input runat="server" type="number" min="1" max="9" step="1" id="box" class="form-control" maxlength="1" style="margin:auto;" pattern="^[1-9]" title="box" />
                        </td>
                            
                    <%} %>
                </tr>
                <% } %>
            </table>
            <div class="text-center col-md-12" style="margin-top:10px;">
                <asp:Button runat="server" OnClick="btn_Clicked" CausesValidation="false" ID="submitButton" CssClass="btn btn-primary col-md-12"></asp:Button>
            </div>
        </div>
    </div>


</asp:Content>
<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TRassessment._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>Simple Password Website</h1>
        <p class="lead">
            Below is a short quiz of some password facts - see if you can get them all right
            <br />
            Or if you would like to see how strong your own passwords are click on the Password Strength Checker up the top!
        </p>
    </div>

    <div>
        <asp:Label ID="lblQuest1" runat="server" Text="Question One: Which Password is the best?" Font-Size="Large"></asp:Label>
        <asp:RadioButtonList ID="rblQuest1" runat="server">
            <asp:ListItem Value="This is too simple">Password</asp:ListItem>
            <asp:ListItem Value="Slightly better but not the best">ThisIsAGoodPa55word!</asp:ListItem>
            <asp:ListItem Value="Correct">Gidr458^h2g*)2</asp:ListItem>
            <asp:ListItem Value="This lies">ReallyItIsSafe</asp:ListItem>
        </asp:RadioButtonList>

        <asp:Label ID="lblQ1Answer" Font-Size="Medium" runat="server"></asp:Label>
        <br />
        <asp:Button ID="BtnSubmitQ1" runat="server" Text="Submit" OnClick="BtnSubmitQ1_Click" />
        <br />
    </div>

    <div>
        <asp:Label ID="lblQuest2" runat="server" Text="Question Two: True or False - The most used numbers in passwords are 1 and 2" Font-Size="Large"></asp:Label>
        <asp:RadioButtonList ID="rblQuest2" runat="server">
            <asp:ListItem Value="True">True</asp:ListItem>
            <asp:ListItem Value="Incorrect the answer was true!">False</asp:ListItem>
           
        </asp:RadioButtonList>

        <asp:Label ID="lblQ2Answer" Font-Size="Medium" runat="server"></asp:Label>
        <br />
        <asp:Button ID="BtnSubmitQ2" runat="server" Text="Submit" OnClick="BtnSubmitQ2_Click" />
        <br />
    </div>
    <div>
        <asp:Label ID="lblQuest3" runat="server" Text="Question Three: What is the most hacked password?" Font-Size="Large"></asp:Label>
        <asp:RadioButtonList ID="rblQuest3" runat="server">
            <asp:ListItem Value="Correct">123456</asp:ListItem>
            <asp:ListItem Value="So Close">123456789</asp:ListItem>
            <asp:ListItem Value="This is the 4th most hacked password">password</asp:ListItem>
            <asp:ListItem Value="Incorrect but it is the 3rd most hacked pass">Querty</asp:ListItem>
        </asp:RadioButtonList>

        <asp:Label ID="lblQ3Answer" Font-Size="Medium" runat="server"></asp:Label>
        <br />
        <asp:Button ID="BtnSubmitQ3" runat="server" Text="Submit" OnClick="BtnSubmitQ3_Click" />
        <br />

    <asp:Label ID="lblEnd" runat="server" Text="How did you do?" Font-Size="Large"></asp:Label>
    </div>
    
</asp:Content>

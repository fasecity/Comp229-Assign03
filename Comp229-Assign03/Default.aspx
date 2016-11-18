<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp229_Assign03._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

 <asp:DataList ID="studentsList" runat="server" >
      
     <ItemTemplate>
       Student ID:<strong><%#Eval("StudentID") %></strong><br /><asp:Literal ID="Literal2" runat ="server" EnableViewState="false" />
         
          Student LastName:<strong><%#Eval("LastName") %></strong><br /><asp:Literal ID="extraDetailsLiteral" runat ="server" EnableViewState="false" />
        Student First Name:<strong><%#Eval("FirstMidName") %></strong><br /><asp:Literal ID="Literal1" runat ="server" EnableViewState="false" />
         <br />
          </ItemTemplate>
     
   </asp:DataList>


     <%--<asp:Label ID="StudentIDLabel" runat="server" Text="Label">Add Student Id</asp:Label>
     <br />
    
    <asp:TextBox ID="AddStudentIdTextBox" runat="server"></asp:TextBox>--%>
    <br />
     <asp:Label ID="LastNameLabel" runat="server" Text="Label">Add Last Name</asp:Label>
     <br />
     <asp:TextBox ID="AddLastNameTextBox" runat="server"></asp:TextBox>
    <br />
   
     <asp:Label ID="FirstNameLabel" runat="server" Text="Label">Add First Name</asp:Label>
   <br />
      <asp:TextBox ID="AddFirstNameTextBox3" runat="server"></asp:TextBox>
      
<br />
    <asp:Label ID="EnrollmentLabel" runat="server" Text="Label">Add Enrollment date</asp:Label>
   <br />
      <asp:TextBox ID="EnrollmentTextBox1" runat="server"></asp:TextBox>
    
    
    <%-- Update Button--%>
  
     <br />
     <asp:Button class=form ID="UpdateButton" runat="server" Text="Add" OnClick="UpdateButton_Click" />

  

</asp:Content>

<%@ Page Title="Enrollment" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Enrollment.aspx.cs" Inherits="Comp229_Assign03.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StudentID,EnrollmentID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="StudentID" HeaderText="StudentID" InsertVisible="False" ReadOnly="True" SortExpression="StudentID" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="FirstMidName" HeaderText="FirstMidName" SortExpression="FirstMidName" />
            <asp:BoundField DataField="EnrollmentDate" HeaderText="EnrollmentDate" SortExpression="EnrollmentDate" />
            <asp:BoundField DataField="EnrollmentID" HeaderText="EnrollmentID" InsertVisible="False" ReadOnly="True" SortExpression="EnrollmentID" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Comp229Assign03ConnectionString %>" SelectCommand="SELECT Students.StudentID, Students.LastName, Students.FirstMidName, Students.EnrollmentDate, Enrollments.EnrollmentID FROM Enrollments INNER JOIN Students ON Enrollments.StudentID = Students.StudentID"></asp:SqlDataSource>
  
</asp:Content>

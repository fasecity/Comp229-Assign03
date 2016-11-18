<%@ Page Title="Student" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="Comp229_Assign03.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     
       
    


    
   
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="StudentID" HeaderText="StudentID" InsertVisible="False" ReadOnly="True" SortExpression="StudentID" />
        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
        <asp:BoundField DataField="FirstMidName" HeaderText="FirstMidName" SortExpression="FirstMidName" />
        <asp:BoundField DataField="EnrollmentDate" HeaderText="EnrollmentDate" SortExpression="EnrollmentDate" />
        <asp:BoundField DataField="Expr1" HeaderText="Expr1" SortExpression="Expr1" />
        <asp:BoundField DataField="Grade" HeaderText="Grade" SortExpression="Grade" />
        <asp:BoundField DataField="CourseID" HeaderText="CourseID" SortExpression="CourseID" />
        <asp:BoundField DataField="Credits" HeaderText="Credits" SortExpression="Credits" />
        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
        <asp:BoundField DataField="Expr2" HeaderText="Expr2" InsertVisible="False" ReadOnly="True" SortExpression="Expr2" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Comp229Assign03ConnectionString %>" SelectCommand="SELECT Students.StudentID, Students.LastName, Students.FirstMidName, Students.EnrollmentDate, Enrollments.StudentID AS Expr1, Enrollments.Grade, Enrollments.CourseID, Courses.Credits, Courses.Title, Courses.CourseID AS Expr2 FROM Students INNER JOIN Enrollments ON Students.StudentID = Enrollments.StudentID INNER JOIN Courses ON Enrollments.CourseID = Courses.CourseID"></asp:SqlDataSource>
     
       
    


    
   
</asp:Content>

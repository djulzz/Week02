<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SchoolPortal.aspx.cs" Inherits="Week02.scripts.SchoolPortal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="studentID" runat="server" />
        &nbsp;
        <asp:Button ID="Button1" runat="server" Text="Returning Students" />
        &nbsp;
        <asp:Literal ID="validateMessage" runat="server" />
        &nbsp;
        <asp:RequiredFieldValidator ID="idValidator" runat="server" ErrorMessage="**You must enter your student ID**"
            ControlToValidate="studentID" />
    </form>
</body>
</html>

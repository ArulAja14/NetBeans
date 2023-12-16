<%-- 
    Document   : index
    Created on : Nov 29, 2023, 11:02:13 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <title>Latihan 13</title>
    </head>
    <body bgcolor="FF0000">
        <%
            String menu="<br><b>Data Barang</b><br>"
            + "<a href=.>Nama Pembeli</a><br>"
            + "<a href=.>Nama Barang</a><br><br>"
            + "<b>Transaksi</b><br>"
            + "<a href=.>Harga</a><br><br>";
            
            String topMenu="<nav><ul>"
            + "<li><a href=.>Home</a></li>"
            + "<li><a href=#>Data</a>"
            + "<ul>"
            + "<li><a href=.>Nama Pembeli</a></li>"
            + "<li><a href=.>Nama Barang</a></li>"
            + "</ul>"
            + "</li>"
            + "<li><a href=#>Transaksi</a>"
            + "<ul>"
            + "<li><a href=.>Harga</a></li>"
            + "</ul>"
            + "</li>"
            + "</nav>";
            
            String konten="<br><h1>Halo Guys</h1>";
            String userName="";
            
            if (!session.isNew()){
                try{
                    userName = session.getAttribute("userName").toString();
                } catch (Exception ex){}
                
            if (!((userName == null) || userName.equals(""))){
                konten += "<h2>"+userName+"</h2>";
                try {
                    menu = session.getAttribute("menu").toString();
                } catch (Exception ex){}
                
                try {
                    topMenu = session.getAttribute("topMenu").toString();
                } catch (Exception ex) {}
            }
            }
        %>
    <center>
        <table width="100%" bgcolor="#FFD700">
            <tr>
                <td colspan="2" align="center">
                    <br>
                    <h2 style="margin-bottom: 0px; margin-top: 0px;">
                        Selamat Datang
                    </h2>
                    <h1 style="margin-bottom: 0px; margin-top: 0px;">
                        PENJUALAN BARANG
                    </h1>
                    <h4 style="margin-bottom: 0px; margin-top: 0px;">
                        Jl. Bekasi Aja No.100, Tokyo, Jepang
                    </h4>
                    <br>
                </td>
            </tr>
            <tr height="400">
                <td width="200" align="center" valign="top" bgcolor="#ADFF2F">
                    <br>
                    <div id='menu'>
                        <%=menu %>
                    </div>
                </td>
                <td align="center" valign="top" bgcolor="#00FF7F">
                    <%=topMenu %>
                    <br>
                    <%=konten %>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center" bgcolor="#3CB371">
                    <small>
                        Copyright &copy; 2050 Jepang<br>
                        Jl. Bekasi Aja No.100, Tokyo, Jepang<br>
                    </small>
                </td>
            </tr>
        </table>
    </center>
    </body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Steve
  Date: 9/28/20
  Time: 9:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.lordjoe.ssh.AccountsData" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>locBLAST - Local NCBI BLAST+ Search</title>
    <link href="style.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="./includes/Listfavicon.ico" type="image/x-icon">
    <script type="text/javascript">//<![CDATA[
    function download_fasta(filename, title, frm, to, seq) {
        var text = "";
        text += ">";
        text += filename + " ";
        text += title + " (";
        text += frm + " to ";
        text += to + ")";
        text += seq;
        var hiddenElement = document.createElement('a');
        hiddenElement.href = 'data:text/fasta;charset=utf-8,' + encodeURIComponent(text);
        hiddenElement.target = '_blank';
        hiddenElement.download = filename + ".fasta";
        hiddenElement.click();
    }
    <%@include file="includes/loadFunction.jsp" %>

    function changeCSS() {
        //document.getElementsByClassName('form').style.cssText = "background-color: red; color: black; font-size: 44px";
        //document.getElementById('form').style.cssText = "height: 100%;";
        //document.getElementById('form').style.backgroundColor = "red";
    }
    function enableAdvSubmit() {
        document.getElementById('advsearch').disabled = false;
        document.getElementById('advced').style.backgroundColor = "yellow";
        document.getElementById('advced').style.color = "red";
        document.getElementById('advced').style.fontWeight = "bold";
        document.getElementById('advced').style.fontVariant = "small-caps";
        document.getElementById('advced').style.fontFamily = "'Times New Roman', Times, serif";
    }
    //]]>

    function validation() {
        var x = document.forms["blastform"]["seqfile"].value;
        var y = document.forms["blastform"]["fastafile"].value;
        var z = document.forms["blastform"]["parameters"].value;

        var x_bad = ( x == null || y == "" || x=="no file chosen")
        var y_bad = ( y == null || y == "" || y=="no file chosen")
        var z_bad = ( z == null || z == "" || z=="no file chosen")
        if (x_bad || y_bad || z_bad) {
                  alert("Spectrum File and Protein file And Parameters File cannot be empty..!!");
                return false;
            }

        return true;
    }
    </script>

</head>
<body>
<div class="page-logo">
    <a href="https://www.list.lu/"><img src="./includes/LISTLogo.png" alt=" "/></a>
</div>
<div id="form" class="form" >
    <form   action="comet" method="POST" name="blastform" enctype='multipart/form-data'  onsubmit="return validation()" >
        <h2 style="text-align: center;">
            <i style="font-size: medium">loc</i><span style="color:blue; font-size: large">Comet</span> - <span style="font-size: large;">LIST Comet</span>
        </h2>
        <hr class="heffect" />


        <div class="gap">
            Spectrum File <input class="effect" type="file" name="seqfile" accept=".mgf">
        </div>

        <div class="gap">
            Protein File <input class="effect" type="file" name="fastafile" accept=".fasta,.faa,.fas,.fna,.Fasta,.Faa,.Fas,.Fna,.FASTA,.FAA,.FAS,.FNA">
        </div>

        <div class="gap">
            Parameters File <input class="effect" type="file" name="parameters" accept=".params">
        </div>



        <div class="radio-container">
            <b title="Plain Text with Hyperlinks, and Graphical Summary">EMail:</b>&nbsp;
            <select class="effect" id="email" name="email">
                <c:forEach var="party" items="${ AccountsData.getAllUsersMails() }">
                    <option value="${party}">
                        <c:out value="${party}"/>
                    </option>
                </c:forEach>
            </select>
        </div>

        <div class="gap">
            <input class="effect" type="submit" name="search" id="search"    value="Search">
        </div>

    </form>
</div>

</body>
</html>
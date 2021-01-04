<%--
  Created by IntelliJ IDEA.
  User: Steve
  Date: 9/15/2020
  Time: 11:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.lordjoe.ssh.MyUsers" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <link rel="shortcut icon" href="./includes/Listfavicon.ico" type="image/x-icon">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>locBLAST - Local NCBI BLAST+ Search</title>
    <link href="style.css" rel="stylesheet" type="text/css" />
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
      if (x == null || x == "" || x=="no file chosen") {
        var y = document.forms["blastform"]["sequence"].value;
        if (y == null || y == "" ) {
           alert("File and Sequence cannot be empty..!!");
          return false;
        }
      }
        return true;
    }
    </script>

  </head>
  <body>
  <div class="page-logo">
    <a href="http://erp-hpcbioserver.private.list.lu:8080/SlurmProject/"><img src="./includes/LISTLogo.png" alt=" "/></a>
  </div>
  <div id="form" class="form" >
    <form   action="blastRunner" method="POST" name="blastform" enctype='multipart/form-data'  onsubmit="return validation()" >
      <h2 style="text-align: center;">
        <i style="font-size: medium">LIST</i><span style="color:blue; font-size: large">BLAST</span> - <span style="font-size: large;">LIST Cluster NCBI BLAST</span>
      </h2>
      <hr class="heffect" />
      <div id="tips">Choose Program to Use and Database to Search			</div>
      <div class="gap">
        <b title="BlastP, BlastN, BlastX, tBlastN, tBLASTX, DeltaBlast, PSI-Blast, RPS-Blast, and RPS-tBlastN">Program:</b>&nbsp;
        <select class="effect" id="program" name="program" onchange="prgmDesc()">
          <option value="blastn" id="blastn">BlastN</option>
          <option value="blastp" id="blastp" selected>BlastP</option>
          <option value="blastx" id="blastx">BlastX</option>
          <option value="tblastn" id="tblastn">tBlastN</option>
          <option value="tblastx" id="tblastx">tBlastX</option>
          <option value="deltablast" id="deltablast">DeltaBlast</option>
          <option value="psiblast" id="psiblast">PSI-Blast</option>
          <option value="rpsblast" id="rpsblast">RPS-Blast</option>
          <option value="rpstblastn" id="rpstblastn">RPS-tBlastN</option>
        </select>
        <div id="pgm_desc"></div>
      </div>
      <div class="gap">
        <b title="NR, NR/NT, SwissProt, RefSeq-Protein, RefSeq-RNA, EST, PDB, PAT, and PDTDB">Database:</b>&nbsp;
        <select class="effect" id="datalib" name="datalib">
            <option value="nr -remote" id="nr" >Non-redundant Protein/Nucleotide Sequences (NR/NT)</option>
            <option value="swissprot -remote" id="swissprot" selected>UniProtKB/Swiss-Prot (SwissProt)</option>
            <option value="refseq_protein -remote" id="refseq_protein">Reference Proteins Sequences (RefSeq_Protein)</option>
            <option value="refseq_rna -remote" id="refseq_rna">Reference RNA Sequences (RefSeq_RNA)</option>
            <option value="est -remote" id="est">Expressed Sequence Tags (EST)</option>
            <option value="pdb -remote" id="pdb">Protein Data Bank (PDB)</option>
            <option value="pat -remote" id="pat">Patented Protein Sequences (PAT)</option>
            <option value="nr.viridiplantae -remote" id="pat">Plant Non-redundant Protein/Nucleotide Sequences (NR/NT)</option>
          </select>
      </div>
      <div class="gap">
        Enter sequence below in
        <abbr title="&gt;gi|532319|pir|TVFV2E|TVFV2E envelope protein&#13;ELRLRYCAPAGFALLKCNDADYDGFKTNCSNVSVVHCTNLMNTTVTTGLLLNGSYSENRT&#13;QIWQKHRTSNDSALILLNKHYNLTVTCKRPGNKTVLPVTIMAGLVFHSQKYNLRLRQAWC&#13;HFPSNWKGAWKEVKEEIVNLPKERYRGTNDPKRIFFQRQWGDPETANLWFNCHGEFFYCK&#13;MDWFLNYLNNLTVDADHNECKNTSGTKSGNKRAPGP">FASTA</abbr>  format (<a style="font-size:small" onclick="javascript:document.getElementById('program').value='blastp';
 			 document.getElementById('sequence').value='>tr|A0PQ23|A0PQ23_MYCUA Chorismate pyruvate-lyase\nMLAVLPEKREMTECHLSDEEIRKLNRDLRILIATNGTLTRILNVLANDEIVVEIVKQQIQ\nDAAPEMDGCDHSSIGRVLRRDIVLKGRRSGIPFVAAESFIAIDLLPPEIVASLLETHRPI\nGEVMAASCIETFKEEAKVWAGESPAWLELDRRRNLPPKVVGRQYRVIAEGRPVIIITEYF\nLRSVFEDNSREEPIRHQRSVGTSARSGRSICT';" href="javascript:void()" title="Sample Protein Sequence">DEMO</a>)
      </div>
      <div class="gap">
        <textarea class="effect" style="min-width: 498px;" name="sequence" id="sequence" rows="6" cols="60"></textarea>
      </div>
      <div class="gap">
        Or load it from disk&nbsp;
        <input class="effect" type="file" name="seqfile"
               accept=".fasta,.faa,.fas,.fna,.Fasta,.Faa,.Fas,.Fna,.FASTA,.FAA,.FAS,.FNA">
      </div>
      <div class="gap"></div>

      <div class="radio-container">
          <b title="Plain Text with Hyperlinks, and Graphical Summary">EMail:</b>&nbsp;
          <select class="effect" id="email" name="email">
              <c:forEach var="party" items="${ MyUsers.getAllUsersMails() }">
              <option value="${party}">
                <c:out value="${party}"/>
              </option>
            </c:forEach>
          </select>
         </div>

      <div class="gap"></div>
        <div class="gap">
      <div class="radio-container">
          <b title="Plain Text with Hyperlinks, and Graphical Summary">Output:</b>&nbsp;
            <select class="effect" id="outfmt" name="outfmt">
              <option value="0">pairwise</option>
              <!--
              <option value="1">query-anchored showing identities</option>
              <option value="2">query-anchored no identities</option>
              <option value="3">flat query-anchored show identities</option>
              <option value="4">flat query-anchored no identities</option>
              <option value="5">XML Blast output</option>
               <option value="6">tabular</option>
              <option value="7">tabular with comment lines</option>
              <option value="8">Text ASN.1</option>
              <option value="9">Binary ASN.1</option>
              <option value="10">Comma-separated values</option>
              <option value="11"> BLAST archive format (ASN.1)</option>
              -->
              <option value="16" selected>XML2 Blast output</option>
           </select>
       <!--     Output:</b>&nbsp;<input name="outfmt" id="outfmt16" type="radio" value="16" checked="checked"/>&nbsp;
            Graphical Overview&nbsp;<input name="outfmt" id="outfmt0" type="radio" value="0"/>&nbsp;Plain&nbsp;Text  -->
        </div>
      </div>
      <div class="gap">
        <div class="radio-container">
          <b title="Default or Custom Parameters for BLAST Program">Algorithm Parameters:</b>&nbsp;<input name="adv_param" id="adv_param" type="radio" value="default" checked="checked"/>&nbsp;Default&nbsp;<input name="adv_param" id="adv_param" type="radio" value="advanced" onClick="enableAdvSubmit()"/>&nbsp;<a href="parameters.php" title="Advanced Options to Customize BLAST Program"><span id="advced">Advanced</span></a>
        </div>
      </div>
      <div class="gap">
        <input class="effect" type="reset" name="reset" value="Reset">
        <input class="effect" type="button" name="clear" value="Clear Sequence" onClick="document.getElementById('sequence').value=''; document.getElementById('sequence').focus();">
        <input class="effect" type="submit" name="search" id="search"    value="Search">
        <a href="help.php" title="Tutorial"><div id="help"></div></a>
      </div>
      <div style="padding: 7px 0 5px 0">
        <div class="gap"><hr class="hreffect" /></div>
      </div>
      <%@include file="includes/blastconfig.jsp" %>
      <!-- BlastN -->

    </form>
  </div>

  </body>
</html>

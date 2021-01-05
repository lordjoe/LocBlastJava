<%--
  Created by IntelliJ IDEA.
  User: Steve
  Date: 4/20/2020
  Time: 14:32 PM
  To change this template use File | Settings | File Templates.
--%>
window.onload = function() {
document.getElementById('pgm_desc').innerHTML = "<a href='blastp.php'>&lArr; Compares Protein Query vs Protein Database</a>";
//document.getElementById('tips').innerHTML = "Choose Program to Use and Database to Search";
document.getElementById('advsearch').disabled = true;
document.getElementById('blastp_program').style.visibility = 'visible';
document.getElementById('datalib').getElementsByTagName("option")[0].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[1].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[2].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[3].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[4].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[5].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[6].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[7].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[8].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[9].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[10].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[11].selected = false;
};
function prgmDesc() {
var program = document.getElementById("program").value;
if (program == "blastn") {
document.getElementById('pgm_desc').innerHTML = "<a href='" + program + ".php'>&lArr; Compares Nucleotide Query vs Nucleotide Database</a>";
document.getElementById('blastn_program').style.display = "block";
document.getElementById('datalib').getElementsByTagName("option")[0].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[1].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[2].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[3].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[4].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[5].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[6].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[7].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[8].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[9].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[10].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[0].selected = true;
document.getElementById("outfmt16").checked = true;
document.getElementById("outfmt16").disabled = false;
} else {
document.getElementById('blastn_program').style.display = "none";
}
if (program == "blastp") {
document.getElementById('pgm_desc').innerHTML = "<a href='" + program + ".php'>&lArr; Compares Protein Query vs Protein Database</a>";
document.getElementById('blastp_program').style.display = "block";
document.getElementById('datalib').getElementsByTagName("option")[0].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[1].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[2].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[3].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[4].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[5].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[6].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[7].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[8].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[9].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[10].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[11].selected = false;
document.getElementById("outfmt16").checked = true;
document.getElementById("outfmt16").disabled = false;
} else {
document.getElementById('blastp_program').style.display = "none";
}
if (program == "blastx") {
document.getElementById('pgm_desc').innerHTML = "<a href='" + program + ".php'>&lArr; Compares Nucleotide Query vs Protein Database</a>";
document.getElementById('blastx_program').style.display = "block";
document.getElementById('datalib').getElementsByTagName("option")[0].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[1].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[2].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[3].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[4].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[5].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[6].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[7].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[8].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[9].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[10].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[11].selected = false;
document.getElementById("outfmt16").checked = true;
document.getElementById("outfmt16").disabled = false;
} else {
document.getElementById('blastx_program').style.display = "none";
}
if (program == "tblastn") {
document.getElementById('pgm_desc').innerHTML = "<a href='" + program + ".php'>&lArr; Compares Protein Query vs Nucleotide Database</a>";
document.getElementById('tblastn_program').style.display = "block";
document.getElementById('datalib').getElementsByTagName("option")[0].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[1].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[2].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[3].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[4].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[5].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[6].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[7].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[8].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[9].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[10].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[0].selected = true;
document.getElementById("outfmt16").checked = true;
document.getElementById("outfmt16").disabled = false;
} else {
document.getElementById('tblastn_program').style.display = "none";
}
if (program == "tblastx") {
document.getElementById('pgm_desc').innerHTML = "<a href='" + program + ".php'>&lArr; Compares Nucleotide Query vs Nucleotide Database</a>";
document.getElementById('tblastx_program').style.display = "block";
document.getElementById('datalib').getElementsByTagName("option")[0].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[1].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[2].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[3].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[4].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[5].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[6].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[7].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[8].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[9].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[10].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[4].selected = true;
document.getElementById("outfmt16").checked = true;
document.getElementById("outfmt16").disabled = false;
} else {
document.getElementById('tblastx_program').style.display = "none";
}
if (program == "deltablast") {
document.getElementById('pgm_desc').innerHTML = "<a href='" + program + ".php'>&lArr; Compares Protein Query vs Protein CD Database</a>";
document.getElementById('deltablast_program').style.display = "block";
document.getElementById('datalib').getElementsByTagName("option")[0].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[1].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[2].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[3].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[4].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[5].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[6].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[7].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[8].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[9].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[10].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[0].selected = true;
// Graphical Display is Redirected to Normal Display Temporarily
document.getElementById("outfmt16").disabled = true;
document.getElementById("outfmt0").disabled = false;
document.getElementById("outfmt0").checked = true;
} else {
document.getElementById('deltablast_program').style.display = "none";
}
if (program == "psiblast") {
document.getElementById('pgm_desc').innerHTML = "<a href='" + program + ".php'>&lArr; Compares Protein Query vs Protein CD Database</a>";
document.getElementById('psiblast_program').style.display = "block";
document.getElementById('datalib').getElementsByTagName("option")[0].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[1].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[2].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[3].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[4].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[5].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[6].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[7].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[8].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[9].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[10].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[0].selected = true;
// Graphical Display is Redirected to Normal Display Temporarily
document.getElementById("outfmt16").disabled = true;
document.getElementById("outfmt0").disabled = false;
document.getElementById("outfmt0").checked = true;
} else {
document.getElementById('psiblast_program').style.display = "none";
}
if (program == "rpsblast") {
document.getElementById('pgm_desc').innerHTML = "<a href='" + program + ".php'>&lArr; Compares Protein Query vs Protein CD Database</a>";
document.getElementById('rpsblast_program').style.display = "block";
document.getElementById('datalib').getElementsByTagName("option")[0].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[1].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[2].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[3].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[4].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[5].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[6].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[7].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[8].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[9].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[10].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[9].selected = true;
document.getElementById("outfmt16").checked = true;
document.getElementById("outfmt16").disabled = false;
} else {
document.getElementById('rpsblast_program').style.display = "none";
}
if (program == "rpstblastn") {
document.getElementById('pgm_desc').innerHTML = "<a href='" + program + ".php'>&lArr; Compares Nucleotide Query vs Protein CD Database</a>";
document.getElementById('rpstblastn_program').style.display = "block";
document.getElementById('datalib').getElementsByTagName("option")[0].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[1].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[2].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[3].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[4].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[5].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[6].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[7].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[8].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[9].disabled = false;
document.getElementById('datalib').getElementsByTagName("option")[10].disabled = true;
document.getElementById('datalib').getElementsByTagName("option")[9].selected = true;
document.getElementById("outfmt16").checked = true;
document.getElementById("outfmt16").disabled = false;
} else {
document.getElementById('rpstblastn_program').style.display = "none";
}
}


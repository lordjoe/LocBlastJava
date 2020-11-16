    <div id="blastn_program" style="display: none;">
        <div class="gap">
          <b title="Maximum Number of Aligned Sequences to Display">Maximum Target Sequences:</b>&nbsp;
          <select class="effect" id="bn_max_target_seqs" name="bn_max_target_seqs">
            <option value='1'>1</option>
            <option value='10'>10</option>
            <option value='50' selected>50</option>
            <option value='100'>100</option>
            <option value='250'>250</option>
            <option value='500'>500</option>
          </select>
        </div>
        <div class="gap">
          <b title="Expected Number of Chance Matches in a Random Model">Expect Threshold:</b>&nbsp;
          <select class="effect" id="bn_evalue" name="bn_evalue">
            <option value="0.0001">0.0001</option>
            <option value="0.01">0.01</option>
            <option value="1.0">1.0</option>
            <option value="10.0" selected>10.0</option>
            <option value="100.0">100.0</option>
            <option value="1000.0">1000.0</option>
          </select>
        </div>
        <div class="gap">
          <b title="Length of the Seed that Initiates an Alignment">Word Size:</b>&nbsp;
          <select class="effect" name="bn_word_size" id="bn_word_size">
            <option value="11" selected="selected">11</option>
            <option value="20">20</option>
            <option value="24">24</option>
            <option value="28">28</option>
            <option value="32">32</option>
            <option value="48">48</option>
            <option value="64">64</option>
            <option value="128">128</option>
            <option value="256">256</option>
          </select>
        </div>
        <div class="gap">
          <b title="Reward and Penalty for Matching and Mismatching Letters">Match/Mismatch Scores:</b>&nbsp;
          <select class="effect" name="bn_match_scores" id="bn_match_scores">
            <option value="1,-2">Match: 1, Mismatch: -2</option>
            <option value="1,-3">Match: 1, Mismatch: -3</option>
            <option value="1,-4">Match: 1, Mismatch: -4</option>
            <option value="2,-3" selected="selected">Match: 2, Mismatch: -3</option>
            <option value="4,-5">Match: 4, Mismatch: -5</option>
            <option value="1,-1">Match: 1, Mismatch: -1</option>
          </select>
        </div>
        <div class="gap">
          <b title="Cost to Create and Extend a Gap in an Alignment">Gap Costs:</b>&nbsp;
          <select class="effect" name="bn_gapcosts" id="bn_gapcosts">
            <option value="0,0">Linear</option>
            <option value="5,2" selected="selected">Existence: 5, Extension: 2</option>
            <option value="2,2">Existence: 2, Extension: 2</option>
            <option value="1,2">Existence: 1, Extension: 2</option>
            <option value="0,2">Existence: 0, Extension: 2</option>
            <option value="3,1">Existence: 3, Extension: 1</option>
            <option value="2,1">Existence: 2, Extension: 1</option>
            <option value="1,1">Existence: 1, Extension: 1</option>
          </select>
        </div>
        <div class="gap">
          <div class="radio-container">
            <input type="checkbox" name="bn_filter1" value="L" id="bn_filter1" checked="checked"/>
            &nbsp;<b title="Mask Regions of Low Compositional Complexity that May Cause Spurious or Misleading Results">Filter Low Complexity Regions</b>
          </div>
        </div>
        <div class="gap">
          <div class="radio-container">
            <input type="checkbox" name="bn_filter2" value="m" id="bn_filter2" checked="checked" />
            &nbsp;<b title="Mask Query while Producing Seeds Used to Scan Database, But Not for Extensions">Mask for Lookup Table Only</b>
          </div>
        </div>
      </div>
      <!-- BlastP -->
      <div id="blastp_program">
        <div class="gap">
          <b title="Maximum Number of Aligned Sequences to Display">Maximum Target Sequences:</b>&nbsp;
          <select class="effect" id="bp_max_target_seqs" name="bp_max_target_seqs">
            <option value='1'>1</option>
            <option value='10'>10</option>
            <option value='50' selected>50</option>
            <option value='100'>100</option>
            <option value='250'>250</option>
            <option value='500'>500</option>
          </select>
        </div>
        <div class="gap">
          <b title="Expected Number of Chance Matches in a Random Model">Expect Threshold:</b>&nbsp;
          <select class="effect" id="bp_evalue" name="bp_evalue">
            <option value="0.0001">0.0001</option>
            <option value="0.01">0.01</option>
            <option value="1.0">1.0</option>
            <option value="10.0" selected>10.0</option>
            <option value="100.0">100.0</option>
            <option value="1000.0">1000.0</option>
          </select>
        </div>
        <div class="gap">
          <b title="Length of the Seed that Initiates an Alignment">Word Size:</b>&nbsp;
          <select class="effect" name="bp_word_size" id="bp_word_size">
            <option value="6" selected="selected">6</option>
            <option value="11">11</option>
            <option value="20">20</option>
            <option value="24">24</option>
            <option value="28">28</option>
            <option value="32">32</option>
            <option value="48">48</option>
            <option value="64">64</option>
            <option value="128">128</option>
            <option value="256">256</option>
          </select>
        </div>
        <div class="gap">
          <b title="Assigns Score for Aligning Pairs of Residues, and Determines Overall Alignment Score">Matrix:</b>&nbsp;
          <select class="effect" name="bp_matrix" id="bp_matrix">
            <option value="PAM30">PAM30</option>
            <option value="PAM70">PAM70</option>
            <option value="PAM250">PAM250</option>
            <option value="BLOSUM80">BLOSUM80</option>
            <option value="BLOSUM62" selected="selected">BLOSUM62</option>
            <option value="BLOSUM45">BLOSUM45</option>
            <option value="BLOSUM50">BLOSUM50</option>
            <option value="BLOSUM90">BLOSUM90</option>
          </select>
        </div>
        <div class="gap">
          <b title="Cost to Create and Extend a Gap in an Alignment">Gap Costs:</b>&nbsp;
          <select class="effect" name="bp_gapcosts" id="bp_gapcosts">
            <option value="11,2">Existence: 11, Extension: 2</option>
            <option value="10,2">Existence: 10, Extension: 2</option>
            <option value="9,2">Existence: 9, Extension: 2</option>
            <option value="8,2">Existence: 8, Extension: 2</option>
            <option value="7,2">Existence: 7, Extension: 2</option>
            <option value="6,2">Existence: 6, Extension: 2</option>
            <option value="13,1">Existence: 13, Extension: 1</option>
            <option value="12,1">Existence: 12, Extension: 1</option>
            <option value="11,1" selected="selected">Existence: 11, Extension: 1</option>
            <option value="10,1">Existence: 10, Extension: 1</option>
            <option value="9,1">Existence: 9, Extension: 1</option>
          </select>
        </div>
        <div class="gap">
          <div class="radio-container">
            <input type="checkbox" name="bp_filter1" value="L" id="bp_filter1"/>
            &nbsp;<b title="Mask Regions of Low Compositional Complexity that May Cause Spurious or Misleading Results">Filter Low Complexity Regions</b>
          </div>
        </div>
        <div class="gap">
          <div class="radio-container">
            <input type="checkbox" name="bp_filter2" value="m" id="bp_filter2"/>
            &nbsp;<b title="Mask Query while Producing Seeds Used to Scan Database, But Not for Extensions">Mask for Lookup Table Only</b>
          </div>
        </div>
      </div>
      <!-- BlastX -->
      <div id="blastx_program" style="display: none;">
        <div class="gap">
          <b title="Maximum Number of Aligned Sequences to Display">Maximum Target Sequences:</b>&nbsp;
          <select class="effect" id="bx_max_target_seqs" name="bx_max_target_seqs">
            <option value='1'>1</option>
            <option value='10'>10</option>
            <option value='50' selected>50</option>
            <option value='100'>100</option>
            <option value='250'>250</option>
            <option value='500'>500</option>
          </select>
        </div>
        <div class="gap">
          <b title="Expected Number of Chance Matches in a Random Model">Expect Threshold:</b>&nbsp;
          <select class="effect" id="bx_evalue" name="bx_evalue">
            <option value="0.0001">0.0001</option>
            <option value="0.01">0.01</option>
            <option value="1.0">1.0</option>
            <option value="10.0" selected>10.0</option>
            <option value="100.0">100.0</option>
            <option value="1000.0">1000.0</option>
          </select>
        </div>
        <div class="gap">
          <b title="Length of the Seed that Initiates an Alignment">Word Size:</b>&nbsp;
          <select class="effect" name="bx_word_size" id="bx_word_size">
            <option value="6" selected="selected">6</option>
            <option value="11">11</option>
            <option value="20">20</option>
            <option value="24">24</option>
            <option value="28">28</option>
            <option value="32">32</option>
            <option value="48">48</option>
            <option value="64">64</option>
            <option value="128">128</option>
            <option value="256">256</option>
          </select>
        </div>
        <div class="gap">
          <b title="Assigns Score for Aligning Pairs of Residues, and Determines Overall Alignment Score">Matrix:</b>&nbsp;
          <select class="effect" name="bx_matrix" id="bx_matrix">
            <option value="PAM30">PAM30</option>
            <option value="PAM70">PAM70</option>
            <option value="PAM250">PAM250</option>
            <option value="BLOSUM80">BLOSUM80</option>
            <option value="BLOSUM62" selected="selected">BLOSUM62</option>
            <option value="BLOSUM45">BLOSUM45</option>
            <option value="BLOSUM50">BLOSUM50</option>
            <option value="BLOSUM90">BLOSUM90</option>
          </select>
        </div>
        <div class="gap">
          <b title="Cost to Create and Extend a Gap in an Alignment">Gap Costs:</b>&nbsp;
          <select class="effect" name="bx_gapcosts" id="bx_gapcosts">
            <option value="11,2">Existence: 11, Extension: 2</option>
            <option value="10,2">Existence: 10, Extension: 2</option>
            <option value="9,2">Existence: 9, Extension: 2</option>
            <option value="8,2">Existence: 8, Extension: 2</option>
            <option value="7,2">Existence: 7, Extension: 2</option>
            <option value="6,2">Existence: 6, Extension: 2</option>
            <option value="13,1">Existence: 13, Extension: 1</option>
            <option value="12,1">Existence: 12, Extension: 1</option>
            <option value="11,1" selected="selected">Existence: 11, Extension: 1</option>
            <option value="10,1">Existence: 10, Extension: 1</option>
            <option value="9,1">Existence: 9, Extension: 1</option>
          </select>
        </div>
        <div class="gap">
          <div class="radio-container">
            <input type="checkbox" name="bx_filter1" value="L" id="bx_filter1" checked="checked"/>
            &nbsp;<b title="Mask Regions of Low Compositional Complexity that May Cause Spurious or Misleading Results">Filter Low Complexity Regions</b>
          </div>
        </div>
        <div class="gap">
          <div class="radio-container">
            <input type="checkbox" name="bx_filter2" value="m" id="bx_filter2"/>
            &nbsp;<b title="Mask Query while Producing Seeds Used to Scan Database, But Not for Extensions">Mask for Lookup Table Only</b>
          </div>
        </div>
      </div>
      <!-- tBlastN -->
      <div id="tblastn_program" style="display: none;">
        <div class="gap">
          <b title="Maximum Number of Aligned Sequences to Display">Maximum Target Sequences:</b>&nbsp;
          <select class="effect" id="tbn_max_target_seqs" name="tbn_max_target_seqs">
            <option value='1'>1</option>
            <option value='10'>10</option>
            <option value='50' selected>50</option>
            <option value='100'>100</option>
            <option value='250'>250</option>
            <option value='500'>500</option>
          </select>
        </div>
        <div class="gap">
          <b title="Expected Number of Chance Matches in a Random Model">Expect Threshold:</b>&nbsp;
          <select class="effect" id="tbn_evalue" name="tbn_evalue">
            <option value="0.0001">0.0001</option>
            <option value="0.01">0.01</option>
            <option value="1.0">1.0</option>
            <option value="10.0" selected>10.0</option>
            <option value="100.0">100.0</option>
            <option value="1000.0">1000.0</option>
          </select>
        </div>
        <div class="gap">
          <b title="Length of the Seed that Initiates an Alignment">Word Size:</b>&nbsp;
          <select class="effect" name="tbn_word_size" id="tbn_word_size">
            <option value="6" selected="selected">6</option>
            <option value="11">11</option>
            <option value="20">20</option>
            <option value="24">24</option>
            <option value="28">28</option>
            <option value="32">32</option>
            <option value="48">48</option>
            <option value="64">64</option>
            <option value="128">128</option>
            <option value="256">256</option>
          </select>
        </div>
        <div class="gap">
          <b title="Assigns Score for Aligning Pairs of Residues, and Determines Overall Alignment Score">Matrix:</b>&nbsp;
          <select class="effect" name="tbn_matrix" id="tbn_matrix">
            <option value="PAM30">PAM30</option>
            <option value="PAM70">PAM70</option>
            <option value="PAM250">PAM250</option>
            <option value="BLOSUM80">BLOSUM80</option>
            <option value="BLOSUM62" selected="selected">BLOSUM62</option>
            <option value="BLOSUM45">BLOSUM45</option>
            <option value="BLOSUM50">BLOSUM50</option>
            <option value="BLOSUM90">BLOSUM90</option>
          </select>
        </div>
        <div class="gap">
          <b title="Cost to Create and Extend a Gap in an Alignment">Gap Costs:</b>&nbsp;
          <select class="effect" name="tbn_gapcosts" id="tbn_gapcosts">
            <option value="11,2">Existence: 11, Extension: 2</option>
            <option value="10,2">Existence: 10, Extension: 2</option>
            <option value="9,2">Existence: 9, Extension: 2</option>
            <option value="8,2">Existence: 8, Extension: 2</option>
            <option value="7,2">Existence: 7, Extension: 2</option>
            <option value="6,2">Existence: 6, Extension: 2</option>
            <option value="13,1">Existence: 13, Extension: 1</option>
            <option value="12,1">Existence: 12, Extension: 1</option>
            <option value="11,1" selected="selected">Existence: 11, Extension: 1</option>
            <option value="10,1">Existence: 10, Extension: 1</option>
            <option value="9,1">Existence: 9, Extension: 1</option>
          </select>
        </div>
        <div class="gap">
          <div class="radio-container">
            <input type="checkbox" name="tbn_seg" value="L" id="tbn_seg" checked="checked"/>
            &nbsp;<b title="Mask Regions of Low Compositional Complexity that May Cause Spurious or Misleading Results">Filter Low Complexity Regions</b>
          </div>
        </div>
        <div class="gap">
          <div class="radio-container">
            <input type="checkbox" name="tbn_filter2" value="m" id="tbn_filter2"/>
            &nbsp;<b title="Mask Query while Producing Seeds Used to Scan Database, But Not for Extensions">Mask for Lookup Table Only</b>
          </div>
        </div>
      </div>
      <!-- tBlastX -->
      <div id="tblastx_program" style="display: none;">
        <div class="gap">
          <b title="Maximum Number of Aligned Sequences to Display">Maximum Target Sequences:</b>&nbsp;
          <select class="effect" id="tbx_max_target_seqs" name="tbx_max_target_seqs">
            <option value='1'>1</option>
            <option value='10'>10</option>
            <option value='50' selected>50</option>
            <option value='100'>100</option>
            <option value='250'>250</option>
            <option value='500'>500</option>
          </select>
        </div>
        <div class="gap">
          <b title="Expected Number of Chance Matches in a Random Model">Expect Threshold:</b>&nbsp;
          <select class="effect" id="tbx_evalue" name="tbx_evalue">
            <option value="0.0001">0.0001</option>
            <option value="0.01">0.01</option>
            <option value="1.0">1.0</option>
            <option value="10.0" selected>10.0</option>
            <option value="100.0">100.0</option>
            <option value="1000.0">1000.0</option>
          </select>
        </div>
        <div class="gap">
          <b title="Length of the Seed that Initiates an Alignment">Word Size:</b>&nbsp;
          <select class="effect" name="tbx_word_size" id="tbx_word_size">
            <option value="2">2</option>
            <option value="3" selected="selected">3</option>
          </select>
        </div>
        <div class="gap">
          <b title="Assigns Score for Aligning Pairs of Residues, and Determines Overall Alignment Score">Matrix:</b>&nbsp;
          <select class="effect" name="tbx_matrix" id="tbx_matrix">
            <option value="PAM30">PAM30</option>
            <option value="PAM70">PAM70</option>
            <option value="PAM250">PAM250</option>
            <option value="BLOSUM80">BLOSUM80</option>
            <option value="BLOSUM62" selected="selected">BLOSUM62</option>
            <option value="BLOSUM45">BLOSUM45</option>
            <option value="BLOSUM50">BLOSUM50</option>
            <option value="BLOSUM90">BLOSUM90</option>
          </select>
        </div>
        <div class="gap">
          <b title="To Search Query Strand(s) Against Protein Database">Strand:</b>&nbsp;
          <select class="effect" name="tbx_strand" id="tbx_strand">
            <option value="both" selected="selected">Both</option>
            <option value="plus">Plus</option>
            <option value="minus">Minus</option>
          </select>
        </div>
        <div class="gap">
          <div class="radio-container">
            <input type="checkbox" name="tbx_filter2" value="m" id="tbx_filter2"/>
            &nbsp;<b title="Mask Query while Producing Seeds Used to Scan Database, But Not for Extensions">Mask for Lookup Table Only</b>
          </div>
        </div>
        <div class="gap">
          <div class="radio-container">
            <input type="checkbox" name="tbx_lcase_masking" value="lcm" id="tbx_lcase_masking"/>
            &nbsp;<b title="Mask Any Letters that were Lower-Case in the FASTA Input">Mask Lower Case Letters</b>
          </div>
        </div>
      </div>
      <!-- DeltaBlast -->
      <div id="deltablast_program" style="display: none;">
        <div class="gap">
          <b title="Maximum Number of Aligned Sequences to Display">Maximum Target Sequences:</b>&nbsp;
          <select class="effect" id="db_max_target_seqs" name="db_max_target_seqs">
            <option value='1'>1</option>
            <option value='10'>10</option>
            <option value='50' selected>50</option>
            <option value='100'>100</option>
            <option value='250'>250</option>
            <option value='500'>500</option>
          </select>
        </div>
        <div class="gap">
          <b title="Expected Number of Chance Matches in a Random Model">Expect Threshold:</b>&nbsp;
          <select class="effect" id="db_evalue" name="db_evalue">
            <option value="0.0001">0.0001</option>
            <option value="0.01">0.01</option>
            <option value="1.0">1.0</option>
            <option value="10.0" selected>10.0</option>
            <option value="100.0">100.0</option>
            <option value="1000.0">1000.0</option>
          </select>
        </div>
        <div class="gap">
          <b title="Length of the Seed that Initiates an Alignment">Word Size:</b>&nbsp;
          <select class="effect" name="db_word_size" id="db_word_size">
            <option value="2">2</option>
            <option value="3" selected="selected">3</option>
          </select>
        </div>
        <div class="gap">
          <b title="Assigns Score for Aligning Pairs of Residues, and Determines Overall Alignment Score">Matrix:</b>&nbsp;
          <select class="effect" name="db_matrix" id="db_matrix">
            <option value="PAM30">PAM30</option>
            <option value="PAM70">PAM70</option>
            <option value="PAM250">PAM250</option>
            <option value="BLOSUM80">BLOSUM80</option>
            <option value="BLOSUM62" selected="selected">BLOSUM62</option>
            <option value="BLOSUM45">BLOSUM45</option>
            <option value="BLOSUM50">BLOSUM50</option>
            <option value="BLOSUM90">BLOSUM90</option>
          </select>
        </div>
        <div class="gap">
          <b title="Cost to Create and Extend a Gap in an Alignment">Gap Costs:</b>&nbsp;
          <select class="effect" name="db_gapcosts" id="db_gapcosts">
            <option value="11,2">Existence: 11, Extension: 2</option>
            <option value="10,2">Existence: 10, Extension: 2</option>
            <option value="9,2">Existence: 9, Extension: 2</option>
            <option value="8,2">Existence: 8, Extension: 2</option>
            <option value="7,2">Existence: 7, Extension: 2</option>
            <option value="6,2">Existence: 6, Extension: 2</option>
            <option value="13,1">Existence: 13, Extension: 1</option>
            <option value="12,1">Existence: 12, Extension: 1</option>
            <option value="11,1" selected="selected">Existence: 11, Extension: 1</option>
            <option value="10,1">Existence: 10, Extension: 1</option>
            <option value="9,1">Existence: 9, Extension: 1</option>
          </select>
        </div>
        <div class="gap">
          <b title="Statistical Significance Threshold to Include a Sequence in the Model used by DELTA-BLAST to Create the PSSM">DELTA-BLAST Threshold:</b>&nbsp;
          <input class="effect" type="text" name="db_threshold" value="0.05" id="db_threshold"/>
        </div>
        <div class="gap">
          <b title="Pseduocount parameter. If zero is specified, then the parameter is automatically determined through a minimum length description principle (PMID 19088134). A value of 30 is suggested in order to obtain the approximate behavior before the minimum length principle was implemented.">Pseudocount:</b>&nbsp;
          <input class="effect" type="text" name="db_pseudocount" value="0" id="db_pseudocount"/>
        </div>
      </div>
      <!-- PSI-Blast -->
      <div id="psiblast_program" style="display: none;">
        <div class="gap">
          <b title="Maximum Number of Aligned Sequences to Display">Maximum Target Sequences:</b>&nbsp;
          <select class="effect" id="psib_max_target_seqs" name="psib_max_target_seqs">
            <option value='1'>1</option>
            <option value='10'>10</option>
            <option value='50' selected>50</option>
            <option value='100'>100</option>
            <option value='250'>250</option>
            <option value='500'>500</option>
          </select>
        </div>
        <div class="gap">
          <b title="Expected Number of Chance Matches in a Random Model">Expect Threshold:</b>&nbsp;
          <select class="effect" id="psib_evalue" name="psib_evalue">
            <option value="0.0001">0.0001</option>
            <option value="0.01">0.01</option>
            <option value="1.0">1.0</option>
            <option value="10.0" selected>10.0</option>
            <option value="100.0">100.0</option>
            <option value="1000.0">1000.0</option>
          </select>
        </div>
        <div class="gap">
          <b title="Length of the Seed that Initiates an Alignment">Word Size:</b>&nbsp;
          <select class="effect" name="psib_word_size" id="psib_word_size">
            <option value="2">2</option>
            <option value="3" selected="selected">3</option>
          </select>
        </div>
        <div class="gap">
          <b title="Assigns Score for Aligning Pairs of Residues, and Determines Overall Alignment Score">Matrix:</b>&nbsp;
          <select class="effect" name="psib_matrix" id="psib_matrix">
            <option value="PAM30">PAM30</option>
            <option value="PAM70">PAM70</option>
            <option value="PAM250">PAM250</option>
            <option value="BLOSUM80">BLOSUM80</option>
            <option value="BLOSUM62" selected="selected">BLOSUM62</option>
            <option value="BLOSUM45">BLOSUM45</option>
            <option value="BLOSUM50">BLOSUM50</option>
            <option value="BLOSUM90">BLOSUM90</option>
          </select>
        </div>
        <div class="gap">
          <b title="Cost to Create and Extend a Gap in an Alignment">Gap Costs:</b>&nbsp;
          <select class="effect" name="psib_gapcosts" id="psib_gapcosts">
            <option value="11,2">Existence: 11, Extension: 2</option>
            <option value="10,2">Existence: 10, Extension: 2</option>
            <option value="9,2">Existence: 9, Extension: 2</option>
            <option value="8,2">Existence: 8, Extension: 2</option>
            <option value="7,2">Existence: 7, Extension: 2</option>
            <option value="6,2">Existence: 6, Extension: 2</option>
            <option value="13,1">Existence: 13, Extension: 1</option>
            <option value="12,1">Existence: 12, Extension: 1</option>
            <option value="11,1" selected="selected">Existence: 11, Extension: 1</option>
            <option value="10,1">Existence: 10, Extension: 1</option>
            <option value="9,1">Existence: 9, Extension: 1</option>
          </select>
        </div>
        <div class="gap">
          <b title="Statistical Significance Threshold to Include a Sequence in the Model used by PSI-BLAST to Create the PSSM on the Next Iteration">PSI-BLAST Threshold:</b>&nbsp;
          <input class="effect" type="text" name="psib_threshold" value="0.005" id="psib_threshold"/>
        </div>
        <div class="gap">
          <b title="Pseduocount parameter. If zero is specified, then the parameter is automatically determined through a minimum length description principle (PMID 19088134). A value of 30 is suggested in order to obtain the approximate behavior before the minimum length principle was implemented.">Pseudocount:</b>&nbsp;
          <input class="effect" type="text" name="psib_pseudocount" value="0" id="psib_pseudocount"/>
        </div>
      </div>
      <!-- RPS-Blast -->
      <div id="rpsblast_program" style="display: none;">
        <div class="gap">
          <b title="Maximum Number of Aligned Sequences to Display">Maximum Target Sequences:</b>&nbsp;
          <select class="effect" id="rpsb_max_target_seqs" name="rpsb_max_target_seqs">
            <option value='1'>1</option>
            <option value='10'>10</option>
            <option value='50' selected="selected">50</option>
            <option value='100'>100</option>
            <option value='250'>250</option>
            <option value='500'>500</option>
          </select>
        </div>
        <div class="gap">
          <b title="One-line Descriptions for this Number of Database Sequences">Maximum Descriptions:</b>&nbsp;
          <select class="effect" id="rpsb_num_descriptions" name="rpsb_num_descriptions">
            <option value='1'>1</option>
            <option value='10'>10</option>
            <option value='50'>50</option>
            <option value='100' selected="selected">100</option>
            <option value='250'>250</option>
            <option value='500'>500</option>
          </select>
        </div>
        <div class="gap">
          <b title="Expected Number of Chance Matches in a Random Model">Expect Threshold:</b>&nbsp;
          <select class="effect" id="rpsb_evalue" name="rpsb_evalue">
            <option value="0.0001">0.0001</option>
            <option value="0.01">0.01</option>
            <option value="1.0">1.0</option>
            <option value="10.0" selected="selected">10.0</option>
            <option value="100.0">100.0</option>
            <option value="1000.0">1000.0</option>
          </select>
        </div>
        <div class="gap">
          <div class="radio-container">
            <input type="checkbox" name="rpsb_seg" value="L" id="rpsb_seg"/>
            &nbsp;<b title="Mask Regions of Low Compositional Complexity that May Cause Spurious or Misleading Results">Filter Low Complexity Regions</b>
          </div>
        </div>
        <div class="gap">
          <div class="radio-container">
            <input type="checkbox" name="rpsb_filter2" value="m" id="rpsb_filter2"/>
            &nbsp;<b title="Mask Query while Producing Seeds Used to Scan Database, But Not for Extensions">Mask for Lookup Table Only</b>
          </div>
        </div>
        <div class="gap">
          <div class="radio-container">
            <input type="checkbox" name="rpsb_lcase_masking" value="lcm" id="rpsb_lcase_masking"/>
            &nbsp;<b title="Mask Any Letters that were Lower-Case in the FASTA Input">Mask Lower Case Letters</b>
          </div>
        </div>
      </div>
      <!-- RPS-tBlastN -->
      <div id="rpstblastn_program" style="display: none;">
        <div class="gap">
          <b title="Maximum Number of Aligned Sequences to Display">Maximum Target Sequences:</b>&nbsp;
          <select class="effect" id="rpstbn_max_target_seqs" name="rpstbn_max_target_seqs">
            <option value='1'>1</option>
            <option value='10'>10</option>
            <option value='50' selected="selected">50</option>
            <option value='100'>100</option>
            <option value='250'>250</option>
            <option value='500'>500</option>
          </select>
        </div>
        <div class="gap">
          <b title="One-line Descriptions for this Number of Database Sequences">Maximum Descriptions:</b>&nbsp;
          <select class="effect" id="rpstbn_num_descriptions" name="rpstbn_num_descriptions">
            <option value='1'>1</option>
            <option value='10'>10</option>
            <option value='50'>50</option>
            <option value='100' selected="selected">100</option>
            <option value='250'>250</option>
            <option value='500'>500</option>
          </select>
        </div>
        <div class="gap">
          <b title="Expected Number of Chance Matches in a Random Model">Expect Threshold:</b>&nbsp;
          <select class="effect" id="rpstbn_evalue" name="rpstbn_evalue">
            <option value="0.0001">0.0001</option>
            <option value="0.01">0.01</option>
            <option value="1.0">1.0</option>
            <option value="10.0" selected="selected">10.0</option>
            <option value="100.0">100.0</option>
            <option value="1000.0">1000.0</option>
          </select>
        </div>
        <div class="gap">
          <b title="Query Strand to Search Against Database">Strand:</b>&nbsp;
          <select class="effect" id="rpstbn_strand" name="rpstbn_strand">
            <option value="both" selected="">Both</option>
            <option value="plus">Plus</option>
            <option value="minus">Minus</option>
          </select>
        </div>
        <div class="gap">
          <div class="radio-container">
            <input type="checkbox" name="rpstbn_seg" value="L" id="rpstbn_seg"/>
            &nbsp;<b title="Mask Regions of Low Compositional Complexity that May Cause Spurious or Misleading Results">Filter Low Complexity Regions</b>
          </div>
        </div>
        <div class="gap">
          <div class="radio-container">
            <input type="checkbox" name="rpstbn_filter2" value="m" id="rpstbn_filter2"/>
            &nbsp;<b title="Mask Query while Producing Seeds Used to Scan Database, But Not for Extensions">Mask for Lookup Table Only</b>
          </div>
        </div>
        <div class="gap">
          <div class="radio-container">
            <input type="checkbox" name="rpstbn_lcase_masking" value="lcm" id="rpstbn_lcase_masking"/>
            &nbsp;<b title="Mask Any Letters that were Lower-Case in the FASTA Input">Mask Lower Case Letters</b>
          </div>
        </div>
      </div>
      <div class="gap">
        <input class="effect" type="reset" name="reset" id="reset" value="Reset">
        <input class="effect" type="submit" name="advsearch" id="advsearch" value="Advanced Search">
      </div>
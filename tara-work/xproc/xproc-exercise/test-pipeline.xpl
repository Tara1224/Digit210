<p:declare-step xmlns:p="http://www.w3.org/ns/xproc" xmlns:cx="http://xmlcalabash.com/ns/extensions"
  version="3.0" name="main">
  <p:output port="result"/>
  <p:invisible-xml cx:processor="markup-blitz">
    <p:with-input port="grammar">
      <p:document href="grammar/zoom-transcript.ixml" content-type="text/plain"/>
    </p:with-input>
    <p:with-input port="source">
      <p:document href="source/zoom-transcript.txt" content-type="text/plain"/>
    </p:with-input>
  </p:invisible-xml>
   <p:xslt> <p:with-input port="stylesheet" href="xslt/segment-wordcount.xsl"/> </p:xslt> <p:xslt> <p:with-input port="stylesheet" href="xslt/wordcount-to-svg.xsl"/> </p:xslt> 
</p:declare-step>

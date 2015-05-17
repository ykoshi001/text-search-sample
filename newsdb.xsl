<?xml version="1.0" encoding="Shift_Jis" ?>

<DIV xmlns:xsl="http://www.w3.org/TR/WD-xsl">


<span ID="idM100">ニュースデータ</span>
<span id="idInfoImage" style="{display:none;}">image anchor here </span>
<br/>
<br/>
<DIV ID="idM101"> </DIV>
     

	<xsl:for-each select="information"> 
	
	<TABLE BORDER="2" cellpadding="0" cellspacing="0" >
	
    <TR>
        <TD ID="idM103" STYLE="border:none" >
          <xsl:value-of select="newspaper/@ref"/>  （   
	      <xsl:value-of select="date"/>  ）
		</TD>
	</TR>
<TR style="background-color:#DDDDDD;">
<TD ID="idM102_title" align="center"   ><nobr>記事タイトル</nobr></TD>
<TD ID="idM102_date2" align="center"   ><nobr>日付</nobr></TD>
<TD ID="idM102_category" align="center"   ><nobr>分野</nobr></TD>
<TD ID="idM102_related" align="center"   ><nobr>関連記事</nobr></TD>
<TD ID="idM102_annotation" align="center"   ><nobr>注釈</nobr></TD>
<TD ID="idM102_textfile" align="center"   ><nobr>本文</nobr></TD>
<TD ID="idM102_imagefile" align="center"  ><nobr>写真</nobr></TD>
</TR>
		<xsl:for-each select="news/send">
		    <TR>
		    <TD ID="idM102_title" valign="top"  >
			 <xsl:value-of select="title"/><br/>
		         <xsl:value-of select="hatsu"/>
		    </TD>
		    <TD ID="idM102_date2" valign="top"  >
			<xsl:if test="date2[. !='']">         
					 <xsl:value-of select="date2"/>
			</xsl:if>
			<xsl:if test="date2[. ='']">　</xsl:if>
			</TD>
			
		    <TD ID="idM102_category" valign="top"  >
			<xsl:if test="category[. !='']">         
					 <xsl:value-of select="category"/>
			</xsl:if>
			<xsl:if test="category[. ='']">　</xsl:if>
			</TD>

			<TD ID="idM102_related" valign="top"  >
			<xsl:if test="related[. !='']">         
					 <xsl:value-of select="textfile"/>
			</xsl:if>
			<xsl:if test="related[. ='']">　</xsl:if>
			</TD>

			<TD ID="idM102_annotation" valign="top"  >
			<xsl:if test="annotation[. !='']">         
					 <xsl:value-of select="textfile"/>
			</xsl:if>
			<xsl:if test="annotation[. ='']">　</xsl:if>
			</TD>

			<TD ID="idM102_textfile" valign="top"  >
			<xsl:if test="textfile[. !='']">         
					 <xsl:value-of select="textfile"/>
			</xsl:if>
			<xsl:if test="textfile[. ='']">　</xsl:if>
			</TD>
			
		    <TD ID="idM102_imagefile" valign="top" >
			<xsl:if test="imagefile[. !='']">         
					<xsl:value-of select="imagefile"/>
			</xsl:if>
			<xsl:if test="imagefile[. ='']">　</xsl:if>
			
			</TD>
			
			</TR>
	
		</xsl:for-each>  <!-- news/send  -->
	</TABLE>   
	<br/>
	<SPAN id="idGenBun" style="display:none;" >
		<table>
			<tr><td ID="idM103" >原文： <input type="text" ID="idGenBunSearchText" /> <input type="button" ID="idGenBunSearch" value="検索" onclick="GenbunSearch()" /> </td></tr>
			<tr><td ID="idM102">
			<SPAN id="idSource">
				<xsl:for-each select="genbun/p">
					<p>
					<xsl:value-of />
					</p>
				</xsl:for-each> 
			</SPAN>
			</td></tr>	
		</table>
	</SPAN>
	    
	</xsl:for-each> <!-- information  -->

  <xsl:script><![CDATA[

  ]]></xsl:script>
</DIV>



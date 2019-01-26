<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.ctrip-img-list">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-ctrip-img-list" ox-mod="ctrip-img-list">
        	<div class="list" ox-refresh="append">
	            <xsl:for-each select="data/ui-imglist/i[position() &lt;=10]">
	            	<span class="item">
		            	<img class="img" style="background-image:url({img})" src="http://a.oxm1.cc/img/blank.png"/>
		            	<em class="desc">
		            		<xsl:value-of select="title"/>
		            	</em>
		            </span>
	            </xsl:for-each>
            </div>
        	
        </div>
    </xsl:template>
</xsl:stylesheet>

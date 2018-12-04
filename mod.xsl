<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.ctrip-img-list">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-ctrip-img-list" ox-mod="ctrip-img-list">
        	<div class="col1">
        		<ul class="list" ox-refresh="append">

		            <xsl:for-each select="data/ui-imglist/i[position() &lt;=10 and position() mod 2 = 1 ]">
		            	<li class="item">
			            	<img class="img" src="{img}"/>
			            	<p class="desc">
			            		<xsl:value-of select="title"/>
			            	</p>
			            </li>
		            </xsl:for-each>
	            </ul>
        	</div>
        	<div class="col2">
        		
        		<ul class="list" ox-refresh="append">
		            <xsl:for-each select="data/ui-imglist/i[position() &lt;=10 and position() mod 2 = 0]">
		            	<li class="item">
			            	<img class="img" src="{img}"/>
			            	<p class="desc">
			            		<xsl:value-of select="title"/>
			            	</p>
			            </li>
		            </xsl:for-each>
	            </ul>
        	</div>
        	
        </div>
    </xsl:template>
</xsl:stylesheet>

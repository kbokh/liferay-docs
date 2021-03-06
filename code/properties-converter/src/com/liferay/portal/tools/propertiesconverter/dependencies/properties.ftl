<html>
	<style type="text/css">
		h1 {color:red;}
		h2 {color:blue;}
		h3 {color:darkgreen;}
		#toc {color:#555; border: 1px dotted #555; width: 700px;}
		#toc li {font-size:14px;}
		#toc li li {font-size:12px;}
		pre {background-color: #efe;}
	</style>
	<head>
		<title>${pageTitle!"Portal Properties"}</title>
	</head>
	<body>
		<h1>${pageTitle!"Portal Properties"}</h1>
		<#if toc>
			<h2>Table of Contents</h2>
			<ul id="toc">
				<#list sections as section>
			 		<#if section.name?has_content>
			 			<li>
			 				<a href="${propertiesFileName}.html#${section.name}">${section.name}</a>
			 			</li>
			 		</#if>
				</#list>
			</ul>
		</#if>
		<h2>Properties</h2>
		<#list sections as section>
			<#if section.isSectionTitle>
				<a name="${section.name}"></a><a href="${propertiesFileName}.html">Top of Page</a>
				<h3>${section.name}</h3>
			<#else>
				<#if section.descriptionParagraphs?has_content>
					<#list section.descriptionParagraphs as descriptionParagraph>
						<p>${descriptionParagraph}</p>
					</#list>
				</#if>
				<p><pre>${section.propertiesParagraph}</pre></p>
			</#if>
		</#list>
	</body>
</html>
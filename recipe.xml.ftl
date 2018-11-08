<?xml version="1.0"?>
<recipe>

	<merge from="AndroidManifest.xml.ftl"
             to="app/src/main/AndroidManifest.xml" />
 
    <instantiate from="src/app_package/Contract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${folderName}/core/${className}Contract.java" />
    <instantiate from="src/app_package/Activity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${folderName}/${className}Activity.java" />
    <instantiate from="src/app_package/Presenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${folderName}/core/${className}Presenter.java" />
   
    <instantiate from="src/app_package/Scope.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${folderName}/dagger/scopes/${className}ActivityScope.java" />
				   
    <instantiate from="src/app_package/Module.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${folderName}/dagger/modules/${className}Module.java" />
				   
    <instantiate from="src/app_package/ActivityModule.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${folderName}/dagger/modules/${className}ActivityModule.java" />	

    <instantiate from="src/app_package/ActivityComponent.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${folderName}/dagger/components/${className}ActivityComponent.java" />	

	<instantiate from="src/app_package/activity.xml.ftl"
				   to="app/src/main/res/layout/${layoutName}.xml" />				   
				   
    <open file="${srcOut}/core/${className}Presenter.java"/>
</recipe>
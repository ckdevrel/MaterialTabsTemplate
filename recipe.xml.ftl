<?xml version="1.0"?>
<recipe>



    <#if !(hasDependency('com.android.support:appcompat-v7'))>
        <dependency mavenUrl="com.android.support:appcompat-v7:${buildApi}.+"/>
    </#if>


    <#if !(hasDependency('com.android.support:design'))>

        <dependency mavenUrl="com.android.support:design:${buildApi}.+"/>
    </#if>

    <!-- <dependency mavenUrl="com.jakewharton:butterknife:8.5.1"/> -->

    <!-- <dependency mavenUrl="com.jakewharton:butterknife-compiler:8.5.1"/> -->


    <#if !isFragment>
    <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
    </#if>

    <merge from="res/values/strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

    <#if !isFragment>
    <#if isToolbar>
    <merge from="res/values/styles.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/values/styles.xml" />
    </#if>
    </#if>

    <!-- Decide what kind of layout(s) to add -->

    <#if isFragment>

    <instantiate from="res/layout/fragment_tabs.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/layout/${fragmentLayoutName}.xml" />

    <#else>
    <instantiate from="res/layout/activity_tabs.xml.ftl"
              to="${escapeXmlAttribute(resOut)}/layout/${layoutActivityName}.xml" />

    </#if>


    <!-- Decide which activity code to add -->

    <#if isFragment>

    <instantiate from="src/app_package/TabsFragment.java.ftl"
                           to="${escapeXmlAttribute(srcOut)}/${fragmentClassName}.java" />

    <#else>
    <instantiate from="src/app_package/TabsActivity.java.ftl"
                       to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

    </#if>


    <#if isFragment>

    <open file="${escapeXmlAttribute(srcOut)}/${fragmentClassName}.java" />

    <#else>
    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

    </#if>


    <instantiate from="src/app_package/FirstFragment.java.ftl"
                       to="${escapeXmlAttribute(srcOut)}/${tabName1}.java" />

    <instantiate from="src/app_package/SecondFragment.java.ftl"
                      to="${escapeXmlAttribute(srcOut)}/${tabName2}.java" />

    <instantiate from="src/app_package/ThirdFragment.java.ftl"
                      to="${escapeXmlAttribute(srcOut)}/${tabName3}.java" />

    <instantiate from="res/layout/fragment_first.xml.ftl"
                      to="${escapeXmlAttribute(resOut)}/layout/${tabLayoutName1}.xml" />

    <instantiate from="res/layout/fragment_second.xml.ftl"
                      to="${escapeXmlAttribute(resOut)}/layout/${tabLayoutName2}.xml" />

    <instantiate from="res/layout/fragment_third.xml.ftl"
                      to="${escapeXmlAttribute(resOut)}/layout/${tabLayoutName3}.xml" />

    <instantiate from="res/layout/view_tabs.xml.ftl"
                      to="${escapeXmlAttribute(resOut)}/layout/view_tabs.xml" />


</recipe>

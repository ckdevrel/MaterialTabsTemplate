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


    <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <merge from="res/values/strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

    <#if isToolbar>
    <merge from="res/values/styles.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/values/styles.xml" />
    </#if>

    <!-- Decide what kind of layout(s) to add -->


    <instantiate from="res/layout/activity_tabs.xml.ftl"
              to="${escapeXmlAttribute(resOut)}/layout/${layoutActivityName}.xml" />



    <instantiate from="src/app_package/TabsActivity.java.ftl"
                       to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />




    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />



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


    <#if tabstyle == 'badgewithicons'>

    <copy from="src/app_package/FirstFragment.java.ftl"
                       to="${escapeXmlAttribute(srcOut)}/${tabName1}.java" />

    <copy from="res/drawable/view_badge_un_selected.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/drawable/view_badge_un_selected.xml" />


            <copy from="res/drawable/view_badge_selected.xml.ftl"
                    to="${escapeXmlAttribute(resOut)}/drawable/view_badge_selected.xml" />
    </#if>


    <#if tabposition == 'bottom' && isFragmentHistory>

    <instantiate from="src/app_package/FragNavController.java.ftl"
                       to="${escapeXmlAttribute(srcOut)}/FragNavController.java" />

    <instantiate from="src/app_package/FragNavTransactionOptions.java.ftl"
                       to="${escapeXmlAttribute(srcOut)}/FragNavTransactionOptions.java" />

    <instantiate from="src/app_package/FragmentHistory.java.ftl"
                       to="${escapeXmlAttribute(srcOut)}/FragmentHistory.java" />

    <instantiate from="src/app_package/BaseFragment.java.ftl"
                       to="${escapeXmlAttribute(srcOut)}/BaseFragment.java" />

    </#if>

</recipe>

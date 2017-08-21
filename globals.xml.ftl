<?xml version="1.0"?>
<globals>


    <global id="manifestOut" value="${manifestDir}" />
    <!-- e.g. getSupportActionBar vs. getActionBar -->
    <global id="Support" value="${(minApiLevel lt 14)?string('Support','')}" />
    <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />
    <global id="srcOutPackage" value="${srcDir}" />

    <global id="resOut" value="${resDir}" />
    <global id="menuName" value="${classToResource(activityClass)}"/>

    <global id="tab1" value="${classToResource(tabName1)}"/>
    <global id="tab2" value="${classToResource(tabName2)}" />
    <global id="tab3" value="${classToResource(tabName3)}"/>


</globals>

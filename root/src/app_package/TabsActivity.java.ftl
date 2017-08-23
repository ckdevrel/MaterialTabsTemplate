package ${packageName};

<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>

<#if tabposition == 'bottom'>
    <#include "include_botttom_tab_activity.xml.ftl"/>
<#else>
    <#include "include_top_tab_activity.xml.ftl"/>
</#if>

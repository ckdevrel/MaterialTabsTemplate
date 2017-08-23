package ${packageName};

<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>

<#if tabposition == 'bottom'>
    <#include "include_bottom_tab_activity.java.ftl"/>
<#else>
    <#include "include_top_tab_activity.java.ftl"/>
</#if>

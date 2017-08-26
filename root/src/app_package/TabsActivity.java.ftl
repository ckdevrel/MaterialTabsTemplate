package ${packageName};

<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>

<#if tabposition == 'bottom' && isFragmentHistory>
    <#include "include_bottom_tab_stack_activity.java.ftl"/>
<#elseif tabposition == 'bottom'>
    <#include "include_bottom_tab_activity.java.ftl"/>
<#else>
    <#include "include_top_tab_activity.java.ftl"/>
</#if>

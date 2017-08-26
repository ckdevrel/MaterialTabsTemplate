<#if tabposition == 'top' && tabstyle == 'badgewithicons'>
      <#include "include_view_tabs_badge_top.xml.ftl"/>
<#elseif tabposition == 'top'>
      <#include "include_view_tabs_top.xml.ftl"/>

<#elseif tabposition == 'bottom' && tabstyle == 'badgewithicons'>
      <#include "include_view_tabs_badge_bottom.xml.ftl"/>

<#elseif tabposition == 'bottom'>
      <#include "include_view_tabs_bottom.xml.ftl"/>
</#if>

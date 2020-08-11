
<%--

The contents of this file are subject to the license and copyright
detailed in the LICENSE and NOTICE files at the root of the source
tree and available online at

http://www.dspace.org/license/

--%>
<%--
- Home page JSP
-
- Attributes:
-    communities - Community[] all communities in DSpace
-    recent.submissions - RecetSubmissions
--%>

<%@page import="org.dspace.core.factory.CoreServiceFactory"%>
<%@page import="org.dspace.core.service.NewsService"%>
<%@page import="org.dspace.content.service.CommunityService"%>
<%@page import="org.dspace.content.factory.ContentServiceFactory"%>
<%@page import="org.dspace.content.service.ItemService"%>
<%@page import="org.dspace.core.Utils"%>
<%@page import="org.dspace.content.Bitstream"%>
<%@ page contentType="text/html;charset=UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.dspace.org/dspace-tags.tld" prefix="dspace" %>

<%@ page import="java.io.File" %>
<%@ page import="java.util.Enumeration"%>
<%@ page import="java.util.Locale"%>
<%@ page import="java.util.List"%>
<%@ page import="javax.servlet.jsp.jstl.core.*" %>
<%@ page import="javax.servlet.jsp.jstl.fmt.LocaleSupport" %>
<%@ page import="org.apache.commons.lang.StringUtils" %>
<%@ page import="org.dspace.core.I18nUtil" %>
<%@ page import="org.dspace.app.webui.util.UIUtil" %>
<%@ page import="org.dspace.app.webui.components.RecentSubmissions" %>
<%@ page import="org.dspace.content.Community" %>
<%@ page import="org.dspace.browse.ItemCounter" %>
<%@ page import="org.dspace.content.Item" %>
<%@ page import="org.dspace.services.ConfigurationService" %>
<%@ page import="org.dspace.services.factory.DSpaceServicesFactory" %>

<%
List<Community> communities = (List<Community>) request.getAttribute("communities");

Locale sessionLocale = UIUtil.getSessionLocale(request);
Config.set(request.getSession(), Config.FMT_LOCALE, sessionLocale);
NewsService newsService = CoreServiceFactory.getInstance().getNewsService();
String topNews = newsService.readNewsFile(LocaleSupport.getLocalizedMessage(pageContext, "news-top.html"));
String sideNews = newsService.readNewsFile(LocaleSupport.getLocalizedMessage(pageContext, "news-side.html"));

ConfigurationService configurationService = DSpaceServicesFactory.getInstance().getConfigurationService();

boolean feedEnabled = configurationService.getBooleanProperty("webui.feed.enable");
String feedData = "NONE";
if (feedEnabled)
{
	// FeedData is expected to be a comma separated list
	String[] formats = configurationService.getArrayProperty("webui.feed.formats");
	String allFormats = StringUtils.join(formats, ",");
	feedData = "ALL:" + allFormats;
}

ItemCounter ic = new ItemCounter(UIUtil.obtainContext(request));

RecentSubmissions submissions = (RecentSubmissions) request.getAttribute("recent.submissions");
ItemService itemService = ContentServiceFactory.getInstance().getItemService();
CommunityService communityService = ContentServiceFactory.getInstance().getCommunityService();
%>
<style>
	main#content::before {
		height: calc(85% - 450px);
		background: url("http://aplicaciones.bibliolatino.com/image/overlay.svg") no-repeat center bottom/cover rgba(253, 250, 250, 0.6);
	}
</style>
<div class="col-md-12 fix-home">
	<div class="search-content">
	  <div class="container">
		  <h2 class="title-form">Biblioteca Digital</h2>
		  <%-- Search Box --%>
			<form method="get" action="<%= request.getContextPath() %>/simple-search" class="navbar-form navbar-right" id="form-home">
				<div class="form-group">
				  <input type="text" class="form-control" placeholder="<fmt:message key="jsp.layout.navbar-default.search"/>" name="query" id="tequery" size="25"/>
				</div>
				<button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-search"></span></button>
		<%--               <br/><a href="<%= request.getContextPath() %>/advanced-search"><fmt:message key="jsp.layout.navbar-default.advanced"/></a>
		<%
					if (ConfigurationManager.getBooleanProperty("webui.controlledvocabulary.enable"))
					{
		%>        
					  <br/><a href="<%= request.getContextPath() %>/subject-search"><fmt:message key="jsp.layout.navbar-default.subjectsearch"/></a>
		<%
					}
		%> --%>
			</form>
		</div>
  </div>
	<div id="linksBar">
		<div class="container">
		 <ul>
			<li><a href="/community-list" target="_self"><img src="<%= request.getContextPath() %>/image/icono-colecciones.svg" alt=""></a></li>
			<li><a href="/browse?type=author" target="_self"><img src="<%= request.getContextPath() %>/image/icono-autores.svg" alt=""></a></li>
			<li><a href="/browse?type=title" target="_self"><img src="<%= request.getContextPath() %>/image/icono-titulos.svg" alt=""></a></li>
			<li><a href="/browse?type=dateissued" target="_self"><img src="<%= request.getContextPath() %>/image/icono-fechas.svg" alt=""></a></li>
			<li><a href="/browse?type=subject" target="_self"><img src="<%= request.getContextPath() %>/image/icono-materias.svg" alt=""></a></li>
		 </ul>
		 </div>
	  </div>
	
</div>

<dspace:layout locbar="nolink" titlekey="jsp.home.title" feedData="<%= feedData %>">

</div>

<div class="slider-container">
	<div class="container">
<%
if (submissions != null && submissions.count() > 0)
{
%>
		<div class="col-md-12">
			<h3><fmt:message key="jsp.collection-home.recentsub"/><br>
				<%
	if(feedEnabled)
	{
			String[] fmts = feedData.substring(feedData.indexOf(':')+1).split(",");
			String icon = null;
			int width = 0;
			for (int j = 0; j < fmts.length; j++)
			{
				if ("rss_1.0".equals(fmts[j]))
				{
					icon = "rss1.gif";
					width = 80;
				}
				else if ("rss_2.0".equals(fmts[j]))
				{
					icon = "rss2.gif";
					width = 80;
				}
				else
				{
					icon = "rss.gif";
					width = 36;
				}
	%>
		<a href="<%= request.getContextPath() %>/feed/<%= fmts[j] %>/site"><img src="<%= request.getContextPath() %>/image/<%= icon %>" alt="RSS Feed" width="<%= width %>" height="15" style="margin: 3px 0 3px" /></a>
	<%
			}
		}
	%>
			</h3>
		<div class="panel panel-custom">        

			
		<div id="recent-submissions-carousel" class="panel-heading carousel slide">
			
			<!-- Wrapper for slides -->
			<div class="carousel-inner">
			<%
			boolean first = true;
			for (Item item : submissions.getRecentSubmissions())
			{
				String displayTitle = itemService.getMetadataFirstValue(item, "dc", "title", null, Item.ANY);
				if (displayTitle == null)
				{
					displayTitle = "Untitled";
				}
				String displayAbstract = itemService.getMetadataFirstValue(item, "dc", "description", "abstract", Item.ANY);
				if (displayAbstract == null)
				{
					displayAbstract = "";
				}
		%>
			<div style="padding-bottom: 50px; min-height: 200px;" class="item <%= first?"active":""%>">
				<div style="padding-left: 80px; padding-right: 80px; display: inline-block;">
					<h4><%= Utils.addEntities(StringUtils.abbreviate(displayTitle, 400)) %> </h4>
					<p><%= Utils.addEntities(StringUtils.abbreviate(displayAbstract, 500)) %></p>
					<a href="<%= request.getContextPath() %>/handle/<%=item.getHandle() %>" class="btn btn-success">See</a>
				</div>
			</div>
		<%
				first = false;
				}
		%>
			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#recent-submissions-carousel" data-slide="prev">
			<span class="icon-prev"></span>
			</a>
			<a class="right carousel-control" href="#recent-submissions-carousel" data-slide="next">
			<span class="icon-next"></span>
			</a>

			<ol class="carousel-indicators">
			<li data-target="#recent-submissions-carousel" data-slide-to="0" class="active"></li>
			<% for (int i = 1; i < submissions.count(); i++){ %>
			<li data-target="#recent-submissions-carousel" data-slide-to="<%= i %>"></li>
			<% } %>
			</ol>
		</div></div></div> 
<%
}
%>

</div>
</div>
</dspace:layout>

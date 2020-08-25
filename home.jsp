
<div class="col-md-12">
	<div id="linksBar">
		<div class="container">
		 <ul>
			<li><a href="/community-list" target="_self"><img src="<%= request.getContextPath() %>/image/icon-collections.svg" alt=""><span>Navegar por Colecciones</span></a></li>
			<li><a href="/browse?type=author" target="_self"><img src="<%= request.getContextPath() %>/image/icon-authors.svg" alt=""><span>Navegar por Autores</span></a></li>
			<li><a href="/browse?type=advisor" target="_self"><img src="<%= request.getContextPath() %>/image/estudiante.svg" alt=""><span>Director</span></a></li>
			<li><a href="/browse?type=miembrotribunal" target="_self"><img src="<%= request.getContextPath() %>/image/estudiante(1).svg" alt=""><span>Tribunal</span></a></li>
		</ul>
		<ul>
			<li><a href="/browse?type=title" target="_self"><img src="<%= request.getContextPath() %>/image/icon-titles.svg" alt=""><span>Navegar por Titulos</span></a></li>
			<li><a href="/browse?type=dateissued" target="_self"><img src="<%= request.getContextPath() %>/image/icon-dates.svg" alt=""><span>Navegar por Fechas</span></a></li>
			<li><a href="/browse?type=subject" target="_self"><img src="<%= request.getContextPath() %>/image/icon-subjects.svg" alt=""><span>Navegar por Materias</span></a></li>
		 </ul>
		 </div>
	  </div>
</div>

<!-- <div class="col-md-12">
	<div id="meddium-bar">
		<div class="container">
			<div class="col-md-6">
				<h3>Estadísticas</h3>
				<a href="http://aplicaciones.bibliolatino.com/statistics" id="img-stats">
					<img src="<%= request.getContextPath() %>/image/graph.png" alt="Graficas" class="img-responsive">
				</a>
			</div>
			<div class="col-md-6">
				<h3>Bases de Datos Suscritas</h3>
				<div class="flex-ddbb"> 

					<div style="text-align: center;">
						<a target="_blank" href="http://access.ovid.com/custom/espoch/">
							<img style="border: 0px solid ; width: 140px; height: 70px;" alt="" src="<%= request.getContextPath() %>/image/Logo Wolters Salud.png">
						</a><br><br>
					</div> 
					<div style="text-align: center;">
						<a target="_blank" href="http://access.ovid.com/custom/espochagr/">
							<img style="border: 0px solid ; width: 140px; height: 70px;" alt="" src="<%= request.getContextPath() %>/image/Logo Wolters Veterinary.png">
						</a><br><br>
					</div>

					<div style="text-align: center;">
						<a target="_blank" href="http://asmestandardscollection.org/dashboard.aspx">
							<img style="border: 0px solid ; width: 140px; height: 70px;" alt="" src="<%= request.getContextPath() %>/image/Logo ASME.png">
						</a><br><br>
					</div>
					<div style="text-align: center;">
						<a href="https://compass.astm.org" target="_blank">
							<img style="border: 0px solid ; width: 140px; height: 70px;" alt="" src="<%= request.getContextPath() %>/image/Logo ASTM.png">
						</a><br><br>
					</div>

					<div style="text-align: center;">
						<a target="_blank" href="https://link.springer.com/">
							<img style="border: 0px solid ; width: 140px; height: 70px;" alt="" src="<%= request.getContextPath() %>/image/Springer Espoch.jpg">
						</a><br><br>
					</div>
					<div style="text-align: center;">
						<a target="_blank" href="http://rraae.org.ec">
							<img style="border: 0px solid ; width: 127px; height: 54px;" alt="Repositorio de tesis ECUADOR" src="<%= request.getContextPath() %>/image/rraae.png">
							<br><br>
						</a>
					</div>

					<div style="text-align: center;">
						<a target="_blank" href="https://www.tandfonline.com/">
							<img style="border: 0px solid ; width: 140px; height: 40px;" alt="" src="<%= request.getContextPath() %>/image/Taylor Espoch.png">
							<br><br>
						</a>
					</div>
					<div style="text-align: center;">
						<a target="_blank" href="https://elibro.net/es/lc/espoch/inicio">
							<img style="border: 0px solid ; width: 140px; height: 42px;" alt="" src="<%= request.getContextPath() %>/image/eLibro Espoch.jpg">
							<br><br>
						</a>
					</div>
				</div>
			</div>
		 </div>
	  </div>
</div> -->
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

<dspace:layout locbar="nolink" titlekey="jsp.home.title" feedData="<%= feedData %>">

<div class="row">
<%
if (submissions != null && submissions.count() > 0)
{
%>
		<div class="col-md-8">
		<div class="panel panel-primary">        
		<div id="recent-submissions-carousel" class="panel-heading carousel slide">
			<h3><fmt:message key="jsp.collection-home.recentsub"/>
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
				<div style="padding-left: 80px; padding-right: 80px; display: inline-block;"><%= Utils.addEntities(StringUtils.abbreviate(displayTitle, 400)) %> 
					<a href="<%= request.getContextPath() %>/handle/<%=item.getHandle() %>" class="btn btn-success">See</a>
						<p><%= Utils.addEntities(StringUtils.abbreviate(displayAbstract, 500)) %></p>
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

		<div class="col-md-4">
			<%= sideNews %>
		</div>
<%
}
%>

</div>

<div class="container row card-group-custom">
	
<%
if (communities != null && communities.size() != 0)
{
%>
	<div class="col-md-4">		
               <h3><fmt:message key="jsp.home.com1"/></h3>
                <p><fmt:message key="jsp.home.com2"/></p>
				<div class="list-group">
<%
	boolean showLogos = configurationService.getBooleanProperty("jspui.home-page.logos", true);
    for (Community com : communities)
    {
%><div class="list-group-item row fix-home">
<%  
		Bitstream logo = com.getLogo();
		if (showLogos && logo != null) { %>
	<div class="col-md-3">
        <img alt="Logo" class="img-responsive" src="<%= request.getContextPath() %>/retrieve/<%= logo.getID() %>" /> 
	</div>
	<div class="col-md-9">
<% } else { %>
	<div class="col-md-12">
<% }  %>		
		<h4 class="list-group-item-heading"><a href="<%= request.getContextPath() %>/handle/<%= com.getHandle() %>"><%= com.getName() %></a>
<%
        if (configurationService.getBooleanProperty("webui.strengths.show"))
        {
%>
		<span class="badge pull-right"><%= ic.getCount(com) %></span>
<%
        }

%>
		</h4>
		<p><%= communityService.getMetadata(com, "short_description") %></p>
    </div>
</div>                            
<%
    }
%>
	</div>
	</div>
<%
}
%>
	<%
    	int discovery_panel_cols = 8;
    	int discovery_facet_cols = 4;
    %>
	<%@ include file="discovery/static-sidebar-facet.jsp" %>
</div>

<div class="row">
	<%@ include file="discovery/static-tagcloud-facet.jsp" %>
</div>
	
</div>
</dspace:layout>

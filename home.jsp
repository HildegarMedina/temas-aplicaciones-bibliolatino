
<div class="col-md-12">
	<div id="linksBar">
		<div class="container">
		 <ul>
			<li><a href="/community-list" target="_self"><img src="<%= request.getContextPath() %>/image/icon-collections.svg" alt=""><span>Navegar por Colecciones</span></a></li>
			<li><a href="/browse?type=author" target="_self"><img src="<%= request.getContextPath() %>/image/icon-authors.svg" alt=""><span>Navegar por Autores</span></a></li>
			<li><a href="/browse?type=title" target="_self"><img src="<%= request.getContextPath() %>/image/icon-titles.svg" alt=""><span>Navegar por Titulos</span></a></li>
			<li><a href="/browse?type=dateissued" target="_self"><img src="<%= request.getContextPath() %>/image/icon-dates.svg" alt=""><span>Navegar por Fechas</span></a></li>
			<li><a href="/browse?type=subject" target="_self"><img src="<%= request.getContextPath() %>/image/icon-subjects.svg" alt=""><span>Navegar por Materias</span></a></li>
		 </ul>
		 </div>
	  </div>
</div>

<div class="col-md-12">
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
</div>
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

	

<!-- <div class="row">

	<div class="container">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">

			<ol class="carousel-indicators">
			  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			  <li data-target="#myCarousel" data-slide-to="1"></li>
			  <li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
		  

			<div class="carousel-inner">
			  <div class="item active">
				<img src="https://repositorio.konradlorenz.edu.co/retrieve/cc522715-a581-4a6e-a344-c70b5b23c40b/miniatura%20para%20el%20aula_modificada.jpg" alt="Los Angeles" style="margin: 0 auto;">
			  </div>
		  
			  <div class="item">
				<img src="https://repositorio.konradlorenz.edu.co/retrieve/cc522715-a581-4a6e-a344-c70b5b23c40b/miniatura%20para%20el%20aula_modificada.jpg" alt="Chicago" style="margin: 0 auto;">
			  </div>
		  
			  <div class="item">
				<img src="https://repositorio.konradlorenz.edu.co/retrieve/cc522715-a581-4a6e-a344-c70b5b23c40b/miniatura%20para%20el%20aula_modificada.jpg" alt="New York" style="margin: 0 auto;">
			  </div>
			</div>
		
			  <span class="glyphicon glyphicon-chevron-left"></span>
			  <span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next">
			  <span class="glyphicon glyphicon-chevron-right"></span>
			  <span class="sr-only">Next</span>
			</a>
		  </div>
	</div>

</div> -->
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

<%--

    The contents of this file are subject to the license and copyright
    detailed in the LICENSE and NOTICE files at the root of the source
    tree and available online at

    http://www.dspace.org/license/

--%>
<%--
  - Footer for home page
  --%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page contentType="text/html;charset=UTF-8" %>

<%@ page import="java.net.URLEncoder" %>
<%@ page import="org.dspace.app.webui.util.UIUtil" %>

<%
    String sidebar = (String) request.getAttribute("dspace.layout.sidebar");
%>

            <%-- Right-hand side bar if appropriate --%>
<%
    if (sidebar != null)
    {
%>
	</div>
	<div class="col-md-3">
                    <%= sidebar %>
    </div>
    </div>       
<%
    }
%>
</div>
</main>
            <%-- Page footer --%>
             <!-- <footer class="navbar navbar-inverse navbar-bottom">
             <div id="designedby" class="container text-muted">
             <fmt:message key="jsp.layout.footer-default.theme-by"/> <a href="http://www.cineca.it"><img
                                    src="<%= request.getContextPath() %>/image/logo-cineca-small.png"
                                    alt="Logo CINECA" /></a>
			<div id="footer_feedback" class="pull-right">                                    
                                <p class="text-muted"><fmt:message key="jsp.layout.footer-default.text"/>&nbsp;-
                                <a target="_blank" href="<%= request.getContextPath() %>/feedback"><fmt:message key="jsp.layout.footer-default.feedback"/></a>
                                <a href="<%= request.getContextPath() %>/htmlmap"></a></p>
                                </div>
			</div>
    </footer> -->

    <footer class="footer">

        <!-- Row i -->
        <div class="top">
    
            <div class="container flex">
                <div>
                    <h4>Campus Las Aguas</h4>
                    <ul>
                        <li>Av. Raúl Gómez Lince (Av. Las Aguas)</li>
                        <li>Lun - Vie 11h30 - 20h30</li>
                        <li>Econ. Angelo Paredes</li>
                        <li>aparedes@tecnologicoargos.edu.ec</li>
                        <li><a href="tel:+59342935186">+593 4 2935186</a> Ext. 2115 - 2116</li>
                        <li><a href="tel:+593980122660"></a>+593 980 122 660</li>
                    </ul>
        
                </div>
        
                <div>
                    <h4>Campus Sur</h4>
                    <ul>
                        <li>Francisco de Marcos &amp; Juan Pío Montúfar</li>
                        <li>Lun - Vie 11h30 - 20h30</li>
                        <li>Ing. Denisse Drouet</li>
                        <li>ddrouet@tecnologicoargos.edu.ec</li>
                        <li><a href="tel:+59342400130">+593 4 2400130</a> Ext. 2115 - 2116</li>
                        <li><a href="tel:+593999487028">+593 99 948 7028</a></li>
                    </ul>
                </div>
        
                <div>
                    <h4>Campus La Aurora</h4>
                    <ul>
                        <li>Parque La Aurora, Av León Febres Cordero Ribadeneyra, Daule 090602</li>
                        <li>Lun - Vie 11h30 - 20h30</li>
                        <li>Sra. Rebeca Cabrera</li>
                        <li>drcabrera@tecnologicoargos.edu.ec</li>
                        <li><a href="tel:+593939116092">+593 93 911 6092</a></li>
                    </ul>
                </div> 
            </div>
            
        </div>
    
        <!-- Row ii -->
        <div class="bottom">
        
            <div class="container flex">
                <div>
                    <p>Implementado por: <a href="https://bibliolatino.com" target="_blank">Bibliolatino.com</a></p>
                </div>
        
                <div>
                    <p>Contador de visitas</p>
                </div>
        
                <div class="logo">
                    <a href="https://www.tecnologicoargos.edu.ec"><img src="https://biblioteca.tecnologicoargos.edu.ec:8081/opac-tmpl/bootstrap/images/logo%20png-02.png" alt="Tecnológico Argos"></a>
                </div>
            </div>
            
        </div>
    
    </footer>

	<center>
	<!-- Default Statcounter code for Repositorio Utelesup
https://repositorio.utelesup.edu.pe -->
    </body>
</html>
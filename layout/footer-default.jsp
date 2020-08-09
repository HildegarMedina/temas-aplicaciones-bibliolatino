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
        <footer class="navbar navbar-inverse navbar-bottom">
            <div class="rrss">
                <div class="container">
                    <ul>
                        <li>Síganos en</li>
                        <li><a target="blank" href="https://web.facebook.com/bibliotecacentralespoch/?eid=ARDQH71lSyrSaYEM0-r-w8Qd1rgQsBUQ-3piYvIGXtnFFyIUJfL0rZOFb6zTIFHcKbYhUElxqs9PlJu2&_rdc=1&_rdr"><img src="<%= request.getContextPath() %>/image/icon-facebook.png" alt=""></a></li>
                        <li><a target="blank" href="#"><img src="<%= request.getContextPath() %>/image/icon-twitter.png" alt=""></a></li>
                        <li><a target="blank" href="#"><img src="<%= request.getContextPath() %>/image/icon-googleplus.png" alt=""></a></li>
                        <li><a target="blank" href="#"><img src="<%= request.getContextPath() %>/image/icon-youtube.png" alt=""></a></li>
                        <li><a target="blank" href="#"><img src="<%= request.getContextPath() %>/image/icon-pinterest.png" alt=""></a></li>
                        <li><a target="blank" href="#"><img src="<%= request.getContextPath() %>/image/icon-tumblr.png" alt=""></a></li>
                        <!--<li><a target="blank" href="https://www.konradlorenz.edu.co/es/noticias/noticias-generales-de-la-institucion.html?format=feed&type=atom"><img src="/konradlorenz/images/icon-rss.png" alt=""></a></li>-->
                  </ul>
                  </div>
            </div>
            <div class="content-footer">
                <div class="container">
                    <h4>ESCUELA SUPERIOR POLITÉCNICA DE CHIMBORAZO</h4>
                    <p> Dirección de Bibliotecas y Recursos para el Aprendizaje e Investigación <br>
                        Panamericana Sur Km 1 1/2 - Riobamba, Ecuador <br>
                        593(03) 2998-200 ext: 1066 <br>
                        biblioteca@espoch.edu.ec
                        .</p>
                </div>
            </div>
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
        </footer>
	<center>
	<!-- Default Statcounter code for Repositorio Utelesup
https://repositorio.utelesup.edu.pe -->
<script type="text/javascript">
var sc_project=11967482; 
var sc_invisible=0; 
var sc_security="b9e2f2ca"; 
var scJsHost = "https://";
document.write("<sc"+"ript type='text/javascript' src='" +
scJsHost+
"statcounter.com/counter/counter.js'></"+"script>");
</script>
<noscript><div class="statcounter"><a title="web counter"
href="https://statcounter.com/" target="_blank"><img
class="statcounter"
src="https://c.statcounter.com/11967482/0/b9e2f2ca/0/"
alt="web counter"></a></div></noscript>
<!-- End of Statcounter Code -->
<a href="https://statcounter.com/p11967482/?guest=1">Nos
visitan</a>
	</center>
	<!-- Go to www.addthis.com/dashboard to customize your tools --> <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5c88fac9554b47c0"></script> 
    </body>
</html>
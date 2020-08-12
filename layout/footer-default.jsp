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
                    <h4>Tecnológico Argos</h4>
                    <ul>
                        <li>Av. Raúl Gómez Lince (Av. Las Aguas)</li>
                        <li>Junto al colegio Delfos. Guayaquil - Ecuador</li>
                        <li><a href="tel:2935186">PBX: 293-5186</a></li>
                        <li><a href="tel:0999487028"></a>Admisiones: 099 948 7028</li>
                        <li>Campus Sur: Pío Montúfar y Francisco de Marcos</li>
                    </ul>
        
                </div>
        
                <div>
                    <h4>Menú</h4>
                    <ul>
                        <li><a href="<%= request.getContextPath() %>/">Inicio</a></li>
                        <li><a href="<%= request.getContextPath() %>/statistics">Estadísticas</a></li>
                        <li><a href="https://biblioteca.tecnologicoargos.edu.ec:8081/">Catálogo Bibliográfico</a></li>
                        <li><a href="https://tecnologicoargos.edu.ec/">Tecnológico Argos</a></li>
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
                    <p>Contador de visitas <script type="text/javascript">
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
                        <!-- <a href="https://statcounter.com/p11967482/?guest=1">Nos
                        visitan</a> -->
                            </center>
                            <!-- Go to www.addthis.com/dashboard to customize your tools --> <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5c88fac9554b47c0"></script> </p>
                </div>
        
                <div class="logo">
                    <a href="https://www.tecnologicoargos.edu.ec"><img src="<%= request.getContextPath() %>/image/logo-footer-3.png" alt="Tecnológico Argos"></a>
                </div>
            </div>
            
        </div>

    
    </footer>


	<center>
	<!-- Default Statcounter code for Repositorio Utelesup
https://repositorio.utelesup.edu.pe -->
    </body>
</html>
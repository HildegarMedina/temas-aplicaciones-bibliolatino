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
            <div class="content-footer">
                <div class="container">
                    <div class="footerExternadoBottom">
                        <div class="footerExternadoContainer">
                          <div class="footerExternadoBottomColumns">
                            <div class="colLeft">
                              <a href="/" class="logo">
                                <img class="logo-footer" src="<%= request.getContextPath() %>image/logo-sin-fondo.png" alt="Logo footer">
                              </a>
                              <p>Universidad Católica de Cuenca<br>
                                <b>Teléfonos:</b><br>
                                593 (07) 2-830-751<br>
                                2-830-877<br>
                                2-824-365<br>
                                <b>Email:</b><br>
                                info@ucacue.edu.ec</p>
                              <a href="https://documentacion.ucacue.edu.ec/">Centro de documentación</a><br>
                            </div>
                            <!--colLeft-->
                    
                            <div class="colCenter">
                              <section class="contactenos">
                                <h4>Contáctenos</h4>
                                <ul>
                                  <li>
                                    <a href="mailto:info@ucacue.edu.ec">
                                      Buzón electrónico </a>
                                  </li>
                    
                                  <li>
                                    <a href="https://biblioteca.ucacue.edu.ec">
                                      Biblioteca </a>
                                  </li>
                                </ul>
                              </section>
                              <section class="visitenos">
                                <h4>Universidad</h4>
                                <div class="content-visitenos">
                                  <img class="foto-visitenos" src="<%= request.getContextPath() %>/image/footer-campus.jpg" alt="Campus">
                                  <ul>
                                    <li><a href="https://www.ucacue.edu.ec/la-universidad/">UCACUE</a></li>
                                    <li><a href="https://www.ucacue.edu.ec/la-universidad/mision-y-vision/">Misión y Vision</a>
                                    </li>
                                    <li><a href="https://www.ucacue.edu.ec/la-universidad/autoridades/">Autoridades</a></li>
                                    <li><a href="https://www.ucacue.edu.ec/la-universidad/paseo-virtual-360/">Paseo Virtual</a></li>
                                    <li><a href="planificacion.ucacue.edu.ec">Campus</a></li>
                                  </ul>
                                </div>
                              </section>
                            </div>
                            <!--colCenter-->
                    
                            <div class="colRight">
                              <section>
                                <h4>Síganos en las redes sociales</h4>
                                <div class="redes-sociales">
                                  <ul>
                                    <li><a target="blank" href="https://www.facebook.com/UCatoCuenca/"><img src="<%= request.getContextPath() %>/image/icon-facebook.svg" alt=""></a></li>
                                    <li><a target="blank" href="https://twitter.com/@UCatoCuenca"><img src="<%= request.getContextPath() %>/image/icon-twitter.svg" alt=""></a>
                                    </li>
                                    <li><a target="blank" href="https://www.youtube.com/channel/UCGVWtXf8V7_-mknqXecQzgQ"><img src="<%= request.getContextPath() %>/image/icon-youtube.svg" alt=""></a></li>
                                    <li><a target="blank" href="https://www.instagram.com/ucatocuenca/"><img src="<%= request.getContextPath() %>/image/icon-instagram.svg" alt=""></a></li>
                                  </ul>
                                </div>
                              </section>
                              <section>
                                <h4>Programas académicos</h4>
                                <ul>
                                  <li>
                                    <a href="https://www.ucacue.edu.ec/admisiones/">Admisiones</a>
                                  </li>
                                  <li>
                                    <a href="https://www.ucacue.edu.ec/pregrado/">Grado</a>
                                  </li>
                                  <li>
                                    <a href="https://posgrado.ucacue.edu.ec/">Posgrado</a>
                                  </li>
                                  <li>
                                    <a href="https://www.ucacue.edu.ec/la-universidad/campus-universitario/sedes-y-extensiones/">Sedes y Extensiones</a>
                                  </li>
                                  <li>
                                    <a href="https://documentacion.ucacue.edu.ec/collections/show/953">Documentos Académicos</a>
                                  </li>
                                </ul>
                              </section>
                              <a href="https://documentacion.ucacue.edu.ec/collections/show/421">
                                <h4>Unidades de servicio </h4>
                              </a>
                            </div>
                          </div>
                          <div class="vigilado-men">
                    
                          </div>
                        </div>
                        <!--colRight-->
                    
                      </div>
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
  
  <script>
    $('#recent-submissions-carousel').carousel({
      interval: 6000,
      cycle: true
    }); 
  </script>
	<!-- Go to www.addthis.com/dashboard to customize your tools --> <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5c88fac9554b47c0"></script> 
    </body>
</html>

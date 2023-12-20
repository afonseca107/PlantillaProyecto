<%@ Page Title="Solicitudes" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PlantillaProyecto._Default" %>


<asp:Content ID="HeaderContent" ContentPlaceHolderID="header" runat="server">
    <link href="CSS/tabla_default/fonts/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <link href="CSS/tabla_default/vendor/animate/animate.css" rel="stylesheet" />
    <link href="CSS/tabla_default/vendor/select2/select2.min.css" rel="stylesheet" />
    <link href="Assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" />
    <link href="CSS/tabla_default/css/util.css" rel="stylesheet" />
    <link href="CSS/tabla_default/css/main.css" rel="stylesheet" />
    <script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js" nonce="f556a8a3-d3d6-493d-af8b-5878cf896799"></script>
    <script defer="" referrerpolicy="origin" src="/cdn-cgi/zaraz/s.js?z=JTdCJTIyZXhlY3V0ZWQlMjIlM0ElNUIlNUQlMkMlMjJ0JTIyJTNBJTIyVGFibGUlMjBWMDElMjIlMkMlMjJ4JTIyJTNBMC4wMTQ4NzA5NjY2OTMxNjUyMzMlMkMlMjJ3JTIyJTNBMTM2NiUyQyUyMmglMjIlM0E3NjglMkMlMjJqJTIyJTNBNjQxJTJDJTIyZSUyMiUzQTEzNjYlMkMlMjJsJTIyJTNBJTIyaHR0cHMlM0ElMkYlMkZjb2xvcmxpYi5jb20lMkZldGMlMkZ0YiUyRlRhYmxlX1Jlc3BvbnNpdmVfdjElMkZpbmRleC5odG1sJTIyJTJDJTIyciUyMiUzQSUyMmh0dHBzJTNBJTJGJTJGY29sb3JsaWIuY29tJTJGd3AlMkZ0ZW1wbGF0ZSUyRnJlc3BvbnNpdmUtdGFibGUtdjElMkYlMjIlMkMlMjJrJTIyJTNBMjQlMkMlMjJuJTIyJTNBJTIyVVRGLTglMjIlMkMlMjJvJTIyJTNBMzYwJTJDJTIycSUyMiUzQSU1QiU3QiUyMm0lMjIlM0ElMjJzZXQlMjIlMkMlMjJhJTIyJTNBJTVCJTIyMCUyMiUyQyUyMmNvbmZpZyUyMiUyQyU3QiUyMnNjb3BlJTIyJTNBJTIycGFnZSUyMiU3RCU1RCU3RCUyQyU3QiUyMm0lMjIlM0ElMjJzZXQlMjIlMkMlMjJhJTIyJTNBJTVCJTIyMSUyMiUyQyUyMlVBLTIzNTgxNTY4LTEzJTIyJTJDJTdCJTIyc2NvcGUlMjIlM0ElMjJwYWdlJTIyJTdEJTVEJTdEJTVEJTdE"></script>
    <script nonce="f556a8a3-d3d6-493d-af8b-5878cf896799">(function (w, d) { !function (L, M, N, O) { L[N] = L[N] || {}; L[N].executed = []; L.zaraz = { deferred: [], listeners: [] }; L.zaraz.q = []; L.zaraz._f = function (P) { return async function () { var Q = Array.prototype.slice.call(arguments); L.zaraz.q.push({ m: P, a: Q }) } }; for (const R of ["track", "set", "debug"]) L.zaraz[R] = L.zaraz._f(R); L.zaraz.init = () => { var S = M.getElementsByTagName(O)[0], T = M.createElement(O), U = M.getElementsByTagName("title")[0]; U && (L[N].t = M.getElementsByTagName("title")[0].text); L[N].x = Math.random(); L[N].w = L.screen.width; L[N].h = L.screen.height; L[N].j = L.innerHeight; L[N].e = L.innerWidth; L[N].l = L.location.href; L[N].r = M.referrer; L[N].k = L.screen.colorDepth; L[N].n = M.characterSet; L[N].o = (new Date).getTimezoneOffset(); if (L.dataLayer) for (const Y of Object.entries(Object.entries(dataLayer).reduce(((Z, $) => ({ ...Z[1], ...$[1] })), {}))) zaraz.set(Y[0], Y[1], { scope: "page" }); L[N].q = []; for (; L.zaraz.q.length;) { const ba = L.zaraz.q.shift(); L[N].q.push(ba) } T.defer = !0; for (const bb of [localStorage, sessionStorage]) Object.keys(bb || {}).filter((bd => bd.startsWith("_zaraz_"))).forEach((bc => { try { L[N]["z_" + bc.slice(7)] = JSON.parse(bb.getItem(bc)) } catch { L[N]["z_" + bc.slice(7)] = bb.getItem(bc) } })); T.referrerPolicy = "origin"; T.src = "/cdn-cgi/zaraz/s.js?z=" + btoa(encodeURIComponent(JSON.stringify(L[N]))); S.parentNode.insertBefore(T, S) };["complete", "interactive"].includes(M.readyState) ? zaraz.init() : L.addEventListener("DOMContentLoaded", zaraz.init) }(w, d, "zarazData", "script"); })(window, document);</script>
</asp:Content>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="limiter">
        <div class="container-table100">
            <div class="wrap-table100">
                <div class="table100">
                    <table>
                        <thead>
                            <tr class="table100-head">
                                <th class="column1">Orden</th>
                                <th class="column2">Solicitud</th>
                                <th class="column3">Consecutivo</th>
                                <th class="column4">Id Insumo</th>
                                <th class="column5">Descripcion</th>
                                <th class="column6">Almacen</th>
                                <th class="column7">Cantidad</th>
                                <th class="column8">Cantidad Almacen</th>
                                <th class="column9">Accion</th>
                                <th class="column10">Estado</th>
                                <th class="column11"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="column1">5227</td>
                                <td class="column2">9938</td>
                                <td class="column3">2</td>
                                <td class="column4">0105004003</td>
                                <td class="column5">FOCO 1141 AMBAR 1141 AMBAR 2013001 2013001  </td>
                                <td class="column6">ALMACEN REFACCIONES</td>
                                <td class="column7">2.0000</td>
                                <td class="column8">14.000000</td>
                                <td class="column9">Limpieza</td>
                                <td class="column10">NUEVO</td>
                                <td class="column11"><div><button type="button" class="btn btn-success">Autorizar</button></div></td>
                            </tr>
                            <tr>
                                  <td class="column1">5227</td>
                                <td class="column2">9939</td>
                                <td class="column3">1</td>
                                <td class="column4">0105002004</td>
                                <td class="column5">PALANCA DIRECCIONAL 48532 GROTE # 2917100 K068-5001 K301-295-3 </td>
                                <td class="column6">ALMACEN REFACCIONES</td>
                                <td class="column7">1.0000</td>
                                <td class="column8">1.0000</td>
                                <td class="column9">Limpieza</td>
                                <td class="column10">NUEVO</td>
                                <td class="column11"><div><button type="button" class="btn btn-success">Autorizar</button></div></td>
                            </tr>
                            <tr>
                                <td class="column1">5227</td>
                                <td class="column2">9940</td>
                                <td class="column3">2</td>
                                <td class="column4">0105001030</td>
                                <td class="column5">POSTES DL07047 HEMBRA P/ BATERIA UNIVERSAL GTC-922 DL0704 AUTOZONE  GTC-922 TREVINO </td>
                                <td class="column6">ALMACEN REFACCIONES</td>
                                <td class="column7">3.0000</td>
                                <td class="column8">12.000000</td>
                                <td class="column9">Limpieza</td>
                                <td class="column10">NUEVO</td>
                                <td class="column11"><div><button type="button" class="btn btn-success">Autorizar</button></div></td>
                            </tr>
                            <tr>
                                <td class="column1">5227</td>
                                <td class="column2">9940</td>
                                <td class="column3">2</td>
                                <td class="column4">0105004001</td>
                                <td class="column5">FOCO H7 FOCO HALOGENO STAR H7 24VLTS 70W # 1973600    </td>
                                <td class="column6">ALMACEN REFACCIONES</td>
                                <td class="column7">1.0000</td>
                                <td class="column8">14.000000</td>
                                <td class="column9">Limpieza</td>
                                <td class="column10">NUEVO</td>
                                <td class="column11"><div><button type="button" class="btn btn-success">Autorizar</button></div></td>
                            </tr>
                            
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Scripts" ContentPlaceHolderID="scripts" runat="server">
    <script src="login_css/js/main.js"></script>
    <script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'UA-23581568-13');
    </script>
    <script defer="" src="https://static.cloudflareinsights.com/beacon.min.js/v84a3a4012de94ce1a686ba8c167c359c1696973893317" integrity="sha512-euoFGowhlaLqXsPWQ48qSkBSCFs3DPRyiwVu3FjR96cMPx+Fr+gpWRhIafcHwqwCqWS42RZhIudOvEI+Ckf6MA==" data-cf-beacon="{&quot;rayId&quot;:&quot;838a99f2ce25e7cf&quot;,&quot;version&quot;:&quot;2023.10.0&quot;,&quot;token&quot;:&quot;cd0b4b3a733644fc843ef0b185f98241&quot;}" crossorigin="anonymous"></script>


</asp:Content>
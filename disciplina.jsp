<%-- 
    Document   : disciplina
    Created on : 5 de out de 2020, 01:48:18
    Author     : milen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="java.lang.Exception" %>
<%@page import="br.edu.fatecpg.poo.p1.Disciplina" %>
<!DOCTYPE html>
<%
    ArrayList<Disciplina>Lista=(ArrayList)application.getAttribute("lista");
    if(lista == null){
lista= new ArreyList<>0;
lista.add(new Disciplina("Programa��o Orientada a Objetos : ", "Conceitos e evolu��o da tecnologia de orienta��o a objetos.Limita��es e diferen?as entre o paradigma da programa��o estruturada em rela��o � orienta��o a objetos.Conceitos de objeto, classe, m�todos, atributos,heran�a,polimorfismo,agrega��o,associa��o,depend?ncia,encapsulamento,mensagem e suas respectivas nota��es na linguagem padr�o de representa��o da orienta��o a objetos.Implementa��o de algoritmos orientado a objetos utilizando linguagens de programa��o.Aplica��o e uso das estruturas fundamentais da orienta��o a objetos.", 3,10));
lista.add(new Disciplina("Linguagem de Programa��o : ", "Comandos de linguagens usadas na constru��o e estrutura��o de sites para a web, com p?ginas din?micas e interativas.Defini��o de layouts e formata��o em geral. Adi��o de algoritmos usando la�os, matrizes,datas,fun��es e condi��es.Intrudu��o a Orienta��o a Objeto utilizando objetos, m�todos e propriendades.Integra��o com Banco de Dados.", 3,10));
lista.add(new Disciplina("Sistemas Operacionais II : ", "Apresenta��o de um sistemas operacional espec�fico utilizado em ambiente corporativo.Requisitos de hardware para instala��o do sistema. Processo de instal��o,personaliza��o,opera��o,administra��o e seguran�a sobre o sistema operacional focado. Elabora��o de projetos de sele��o e implanta��o de um sistema operacional", 3,10));
lista.add(new Disciplina("Banco de Dados : ", " Conceito de Base de Dados. Modelos conceituais de informa��es.Modelos de Dados:Relacional, Redes e Hier?rquicos.Modelagem de dados-conceitual,l�gica e f�sica.Teoria relacional:depend�ncias funcionais e mutivaloradas, formas normais.Restri��es de integridade e de seguran�a em Banco de Dados Relacional.Sistemas Gerenciadores de Banco de Dados-objetivo e fun��es.Linguagens de declara��o e de manipula��o de dados", 3,10));
lista.add(new Disciplina("Engenharia de Software III : ", "Conceitos,evolu��o e import�ncia de arquitetura de software.Padr�es de Arquitetura.Padr?es de Distribui??o.Camadas no desenvolvimento de software.Tipos de Arquiteturas de Software.Vis�es na arquitetura de software.Modelo de An�lise e Projetos.Formas de representa��o.O processo de desenvolvimento.Mapeamento para implementa��o.Integra��o do sistema.Teste:planejamento e tipos.Manuten��o.Documenta��o. ", 3,10));
lista.add(new Disciplina("Ingl�s : ", "Consolida��o da compreen��o e produ�ao oral e escrita por meio da integra��o das habilidades linguisticos-comunicativas desenvolvidas na disciplina ingl�s 3.�nfase na oralidade,atendendo os especificidades acad�micos- profissionais da �rea e abordando aspectos s?cio-culturais da l�ngua inglesa.", 3,10));
lista.add(new Disciplina("M�todologia da Pesquisa Cient�fico - Tecnol�gica  : ", " O papel da ci�ncia e da tecnologia.Tipos de conhecimento.M?todo e t?cnica.Oprocesso de leitura e de an?lise textual.Cita��es e bibliografias.Trabalhos acad?micos:tipos, caracter�sticas e composi��o estrutural.O projeto de pesquisa experimental e n�o-experimental.Pesquisa qualitativa e quantitativa.Apresenta��o gr�fica.Normas da ABNT. ", 3,10));
application.setAttribute("lista", lista);}
    
    double nvnota = 0.00;
    if(request.getParameter("modificar")!= null){
        int i = Integer.parseInt(request.getParameter("i"));
         Disciplina alt = lista.get(i);
         
         alt.setNota(Double.parseDouble(request.getParameter("nvnota")));
    }%>

    }
    
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Disciplinas </title>
         <%@include file="WEB-INF/menu.jspf" %>
    </head>
    <body>
        <h1>Prova 1 - POO </h1>
        
        <hr/>
        <table style="width:100%">
               </hr>
            <tr>
                <th>N�mero do RA</th>
                <th>Nome</th>
                <th>Ementa</th>
                <th>Ciclo</th>
                <th>Nota</th>
                <th>Editar</th>
                
            </tr>
            <% for(int i=0; i<lista.size();i++){ %>
            
            <tr>
                <td><%=i + 1 %></td> 
                
                <%Disciplina n = lista.get(i); %>
                
                <%Disciplina alt = lista.get(i); %>
                
                <td><%=n.getNome()%></td>
                <td><%=n.getEmenta()%></td>
                <td><%=n.getCiclo()%></td>
                <td><%=n.getNota()%></td>
                <td>
            <form>
                <input type="number" name="nvnota"/>
                <input type="hidden" name="i" value="<%=i%>"/>
                <input type="submit" name="modificar" value="salvar"/>
                
            </form>
        </td>
            </tr>
            <%}%>
            </table>
    </body>
</html>

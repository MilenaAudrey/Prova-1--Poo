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
lista.add(new Disciplina("Programação Orientada a Objetos : ", "Conceitos e evolução da tecnologia de orientação a objetos.Limitações e diferen?as entre o paradigma da programação estruturada em relação é orientação a objetos.Conceitos de objeto, classe, métodos, atributos,herança,polimorfismo,agregação,associação,depend?ncia,encapsulamento,mensagem e suas respectivas notações na linguagem padrão de representação da orientação a objetos.Implementação de algoritmos orientado a objetos utilizando linguagens de programação.Aplicação e uso das estruturas fundamentais da orientação a objetos.", 3,10));
lista.add(new Disciplina("Linguagem de Programação : ", "Comandos de linguagens usadas na construção e estruturação de sites para a web, com p?ginas din?micas e interativas.Definição de layouts e formatação em geral. Adição de algoritmos usando laços, matrizes,datas,funções e condições.Intrudução a Orientação a Objeto utilizando objetos, métodos e propriendades.Integração com Banco de Dados.", 3,10));
lista.add(new Disciplina("Sistemas Operacionais II : ", "Apresentação de um sistemas operacional específico utilizado em ambiente corporativo.Requisitos de hardware para instalação do sistema. Processo de instalção,personalização,operação,administração e segurança sobre o sistema operacional focado. Elaboração de projetos de seleção e implantação de um sistema operacional", 3,10));
lista.add(new Disciplina("Banco de Dados : ", " Conceito de Base de Dados. Modelos conceituais de informações.Modelos de Dados:Relacional, Redes e Hier?rquicos.Modelagem de dados-conceitual,lógica e física.Teoria relacional:dependências funcionais e mutivaloradas, formas normais.Restrições de integridade e de segurança em Banco de Dados Relacional.Sistemas Gerenciadores de Banco de Dados-objetivo e funções.Linguagens de declaração e de manipulação de dados", 3,10));
lista.add(new Disciplina("Engenharia de Software III : ", "Conceitos,evolução e importância de arquitetura de software.Padrões de Arquitetura.Padr?es de Distribui??o.Camadas no desenvolvimento de software.Tipos de Arquiteturas de Software.Visões na arquitetura de software.Modelo de Análise e Projetos.Formas de representação.O processo de desenvolvimento.Mapeamento para implementação.Integração do sistema.Teste:planejamento e tipos.Manutenção.Documentação. ", 3,10));
lista.add(new Disciplina("Inglês : ", "Consolidação da compreenção e produçao oral e escrita por meio da integração das habilidades linguisticos-comunicativas desenvolvidas na disciplina inglês 3.ênfase na oralidade,atendendo os especificidades acadêmicos- profissionais da área e abordando aspectos s?cio-culturais da língua inglesa.", 3,10));
lista.add(new Disciplina("Métodologia da Pesquisa Científico - Tecnológica  : ", " O papel da ciência e da tecnologia.Tipos de conhecimento.M?todo e t?cnica.Oprocesso de leitura e de an?lise textual.Citações e bibliografias.Trabalhos acad?micos:tipos, características e composição estrutural.O projeto de pesquisa experimental e não-experimental.Pesquisa qualitativa e quantitativa.Apresentação gráfica.Normas da ABNT. ", 3,10));
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
                <th>Número do RA</th>
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

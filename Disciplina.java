/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fatecpg.poo.p1;

/**
 *
 * @author milen
 */
public class Disciplina {
    
    private String nomeDisciplina;
    private String ementa;
    private int ciclo;
    private double nota;

    public Disciplina(String nomeDisciplina, String ementa, int ciclo, double nota) {
        this.nomeDisciplina = nomeDisciplina;
        this.ementa = ementa;
        this.ciclo = ciclo;
        this.nota = nota;
    }

    public String getNomeDisciplina() {
        return nomeDisciplina;
    }

    public void setNomeDisciplina(String nomeDisciplina) {
        this.nomeDisciplina = nomeDisciplina;
    }

    public String getEmenta() {
        return ementa;
    }

    public void setEmenta(String ementa) {
        this.ementa = ementa;
    }

    public int getCiclo() {
        return ciclo;
    }

    public void setCiclo(int ciclo) {
        this.ciclo = ciclo;
    }

    public double getNota() {
        return nota;
    }

    public void setNota(double nota) {
        this.nota = nota;
    }
    
}



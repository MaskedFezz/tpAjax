
import java.util.Date;
import ma.school.beans.Etudiant;
import ma.school.beans.Machine;
import ma.school.util.HibernateUtil;
import ma.school.service.EtudiantService;
import ma.school.service.MachineService;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author leblond
 */
public class Test {
    public static void main(String[] args) {
//        EtudiantService es = new EtudiantService();
//        es.create(new Etudiant("RAMI", "ALI", "Agadir", new Date(), "homme"));
//        for(Etudiant e : es.findAll())
//            System.out.println(e.getId()+" "+e.getNom());
        MachineService machineService = new MachineService();
        for(Machine m:machineService.findByRef("yoga")){
        System.out.println(m);
    }
}
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyectoed1.vista;

import java.awt.Image;
import javax.swing.ImageIcon;
import javax.swing.JLabel;
import proyectoed1.modelo.datos.Datos;
import proyectoed1.modelo.datos.Globales;
import proyectoed1.modelo.dominio.FiltroArchivo;
import proyectoed1.vista.GUIExtras;

/**
 *
 * @author adeve
 */
public class GUIPrincipal extends javax.swing.JFrame {

    /**
     * Creates new form GUIPrincipal
     */
    public static GUIPrincipal gui;
   
    
    public GUIPrincipal() {
        this.setLocationRelativeTo(null);
      
        Datos.iniciarListaHabitaciones();
          Datos.iniciarListaExtras();
        Datos.iniciarListaReservas();
        
        this.setContentPane(new JLabel(new ImageIcon(new ImageIcon(Globales.rutaGeneral+"\\src\\proyectoed1\\vista\\icons\\wall1.jpg").getImage().getScaledInstance(557, 437, Image.SCALE_DEFAULT))));
         
        initComponents();
        Globales.jc.setFileFilter(new FiltroArchivo(".jpeg", "JPEG"));
        Globales.jc.setFileFilter(new FiltroArchivo(".gif", "GIF"));
        Globales.jc.setFileFilter(new FiltroArchivo(".png", "PNG"));
        Globales.jc.setFileFilter(new FiltroArchivo(".jpg", "JPG"));
        
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        botonExtra = new javax.swing.JButton();
        botonHabitacion = new javax.swing.JButton();
        botonReportes = new javax.swing.JButton();
        botonReservaciones = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Sistema de reservas");
        setResizable(false);

        botonExtra.setIcon(new javax.swing.ImageIcon(getClass().getResource("/proyectoed1/vista/icons/extras.png"))); // NOI18N
        botonExtra.setText("Extras");
        botonExtra.setPreferredSize(new java.awt.Dimension(235, 137));
        botonExtra.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                botonExtraActionPerformed(evt);
            }
        });

        botonHabitacion.setIcon(new javax.swing.ImageIcon(getClass().getResource("/proyectoed1/vista/icons/habitaciones.png"))); // NOI18N
        botonHabitacion.setText("Habitaciones");
        botonHabitacion.setToolTipText("");
        botonHabitacion.setPreferredSize(new java.awt.Dimension(235, 137));
        botonHabitacion.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                botonHabitacionActionPerformed(evt);
            }
        });

        botonReportes.setIcon(new javax.swing.ImageIcon(getClass().getResource("/proyectoed1/vista/icons/reportes.png"))); // NOI18N
        botonReportes.setText("Reportes");
        botonReportes.setPreferredSize(new java.awt.Dimension(235, 137));
        botonReportes.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                botonReportesActionPerformed(evt);
            }
        });

        botonReservaciones.setIcon(new javax.swing.ImageIcon(getClass().getResource("/proyectoed1/vista/icons/reservaciones.png"))); // NOI18N
        botonReservaciones.setText("Reservaciones");
        botonReservaciones.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                botonReservacionesActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(31, 31, 31)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(botonReservaciones, javax.swing.GroupLayout.DEFAULT_SIZE, 252, Short.MAX_VALUE)
                    .addComponent(botonHabitacion, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(botonExtra, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(botonReportes, javax.swing.GroupLayout.PREFERRED_SIZE, 237, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(31, 31, 31))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(56, 56, 56)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(botonHabitacion, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(botonExtra, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(51, 51, 51)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(botonReportes, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(botonReservaciones))
                .addContainerGap(56, Short.MAX_VALUE))
        );

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void botonReservacionesActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botonReservacionesActionPerformed
        // TODO add your handling code here:
        new GUIReservas().setVisible(true);
    }//GEN-LAST:event_botonReservacionesActionPerformed

    private void botonExtraActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botonExtraActionPerformed
        // TODO add your handling code here:}
        new GUIExtras().setVisible(true);
    }//GEN-LAST:event_botonExtraActionPerformed

    private void botonHabitacionActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botonHabitacionActionPerformed
        // TODO add your handling code here:
        
        new GUIHabitaciones().setVisible(true);
        //this.dispose();
    }//GEN-LAST:event_botonHabitacionActionPerformed

    private void botonReportesActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botonReportesActionPerformed
        // TODO add your handling code here:
        new GUIReportes().setVisible(true);
    }//GEN-LAST:event_botonReportesActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(GUIPrincipal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(GUIPrincipal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(GUIPrincipal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(GUIPrincipal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                gui = new GUIPrincipal();
                gui.setVisible(true);
            }
        });
    }

    public static GUIPrincipal getGui() {
        return gui;
    }
    
    

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton botonExtra;
    private javax.swing.JButton botonHabitacion;
    private javax.swing.JButton botonReportes;
    private javax.swing.JButton botonReservaciones;
    // End of variables declaration//GEN-END:variables
}

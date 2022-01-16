/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package stok_takip_programi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author CASPER
 */
public class unuttum extends javax.swing.JFrame {

    /**
     * Creates new form unuttum
     */
    public unuttum() {
        
        super("Şifremi Unuttum Formu");
        
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        lbl_email = new javax.swing.JLabel();
        btn_sifre_goster = new javax.swing.JButton();
        txt_email = new javax.swing.JTextField();
        btn_cikis3 = new javax.swing.JButton();
        resim = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setMinimumSize(new java.awt.Dimension(430, 220));
        getContentPane().setLayout(null);

        lbl_email.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        lbl_email.setText("E-Posta Adresiniz");
        getContentPane().add(lbl_email);
        lbl_email.setBounds(40, 50, 130, 17);

        btn_sifre_goster.setText("Şifreyi Göster");
        btn_sifre_goster.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_sifre_gosterActionPerformed(evt);
            }
        });
        getContentPane().add(btn_sifre_goster);
        btn_sifre_goster.setBounds(180, 100, 170, 35);
        getContentPane().add(txt_email);
        txt_email.setBounds(180, 50, 170, 30);

        btn_cikis3.setText("ÇIKIŞ");
        btn_cikis3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_cikis3ActionPerformed(evt);
            }
        });
        getContentPane().add(btn_cikis3);
        btn_cikis3.setBounds(310, 10, 90, 25);

        resim.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        resim.setIcon(new javax.swing.ImageIcon(getClass().getResource("/stok_takip_programi/background.jpg"))); // NOI18N
        getContentPane().add(resim);
        resim.setBounds(0, 0, 420, 200);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btn_sifre_gosterActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_sifre_gosterActionPerformed
        
            String email=txt_email.getText();
                
            try {
                    
                if (email.equals("")) {

                    JOptionPane.showMessageDialog(this, "Lütfen E-Posta Adresinizi Giriniz!");

                } else {            
                    Class.forName("com.mysql.jdbc.Driver");

                    Connection con = null;
                    Statement st = null;
                    ResultSet rs = null;
                    
                    con = DriverManager.getConnection("jdbc:mysql://localhost/stok_takip", "root", "");
                    st = con.createStatement();
                    
                    rs = st.executeQuery("select * from uyeler where email='"+email+"'");
                    
                    if(rs.next()){
                       
                        JOptionPane.showMessageDialog(null, "Şifreniz: " + rs.getString("parola"));
                        
                    }
                    else{
                        JOptionPane.showMessageDialog(null, "Böyle Bir E-Posta Kayıtlı Değil!"); 
                    }
                }
            
            } catch (ClassNotFoundException ex) {
                 JOptionPane.showMessageDialog(null,"Hata: " + ex.toString());

            } catch (SQLException ex) {
                 JOptionPane.showMessageDialog(this,"Veritabanına bağlantı sağlanamadı! " + ex.toString());
            }
        
    }//GEN-LAST:event_btn_sifre_gosterActionPerformed

    private void btn_cikis3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_cikis3ActionPerformed

        urun_ekle a = new urun_ekle();
        a.setVisible(false);
        dispose();
    }//GEN-LAST:event_btn_cikis3ActionPerformed

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
            java.util.logging.Logger.getLogger(unuttum.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(unuttum.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(unuttum.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(unuttum.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new unuttum().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btn_cikis3;
    private javax.swing.JButton btn_sifre_goster;
    private javax.swing.JLabel lbl_email;
    private javax.swing.JLabel resim;
    private javax.swing.JTextField txt_email;
    // End of variables declaration//GEN-END:variables
}

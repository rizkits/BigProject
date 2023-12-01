package test;

import java.awt.Color;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;
import raven.chart.ModelChart;

public class Test extends javax.swing.JFrame {

    public Test() {
        initComponents();
        chart.setTitle("This is chart");
        chart.addLegend("Pengeluaran", Color.decode("#56fa56"), Color.decode("#93ab3a"));
        chart.addLegend("Pemasukan", Color.decode("#ad439b"), Color.decode("#325cdb"));
//        chart.addLegend("Profit", Color.decode("#77165a"), Color.decode("#83ab12"));
        setData("keluar");
    }
    private void setData(String laporan){
        try {
            String datenow=LocalDate.now().format(DateTimeFormatter.ofPattern("yyyy-MM"));
            List<ModelData> lists=new ArrayList<>();
            DatabaseConnection.getInstance().connectToDatabase();
            String sql=(laporan.equals("keluar"))?"select DATE_FORMAT(tanggal, '%d') as 'Date', sum(biaya) as biaya from pengeluaran WHERE tanggal BETWEEN \""+datenow+"-01\" AND \""+datenow+"-31\" group by DATE_FORMAT(tanggal, '%d%M') order by tanggal DESC limit 31;":"select DATE_FORMAT(tgl_selesai, '%d') as 'Date', sum(subtotal_harga) as biaya from detail_pesanan WHERE tgl_selesai BETWEEN \""+datenow+"-01\" AND \""+datenow+"-31\" group by DATE_FORMAT(tgl_selesai, '%d%M') order by tgl_selesai DESC limit 31;";
//            String sql="select DATE_FORMAT(Date, '%M') as 'Month', sum(totalAmount) as Amount, sum(TotalCost) as Cost, sum(totalProfit) as Profit from orders group by DATE_FORMAT(Date, '%m%Y') order by Date DESC limit 7";
            PreparedStatement pst=DatabaseConnection.getInstance().getConnection().prepareStatement(sql);
            ResultSet res=pst.executeQuery();
            while (res.next()) {
                String month=res.getString("Date");
//                String month=res.getString("Month");
//                double amount=res.getDouble("Amount");
                double amount=res.getInt("biaya");
//                double cost=res.getDouble("Cost");
//                double profit=res.getDouble("Profit");
                lists.add(new ModelData(month, amount));
//                lists.add(new ModelData(month, amount, cost, profit));
            }
            res.close();
            pst.close();
            for (int i = lists.size()-1; i >= 0; i--) {
                ModelData d=lists.get(i);
                chart.addData(new ModelChart(d.getMonth(), new double[]{
                    d.getAmount(),
//                    d.getAmount(),
//                    d.getCost(),
//                    d.getProfit()
                }));
            }
            chart.start();
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e.getMessage());
        }
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        panelShadow1 = new raven.panel.PanelShadow();
        chart = new raven.chart.CurveLineChart();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        chart.setFillColor(true);

        javax.swing.GroupLayout panelShadow1Layout = new javax.swing.GroupLayout(panelShadow1);
        panelShadow1.setLayout(panelShadow1Layout);
        panelShadow1Layout.setHorizontalGroup(
            panelShadow1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(panelShadow1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(chart, javax.swing.GroupLayout.PREFERRED_SIZE, 775, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        panelShadow1Layout.setVerticalGroup(
            panelShadow1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(panelShadow1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(chart, javax.swing.GroupLayout.DEFAULT_SIZE, 360, Short.MAX_VALUE)
                .addContainerGap())
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(panelShadow1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(panelShadow1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

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
            java.util.logging.Logger.getLogger(Test.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Test.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Test.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Test.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Test().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private raven.chart.CurveLineChart chart;
    private raven.panel.PanelShadow panelShadow1;
    // End of variables declaration//GEN-END:variables
}

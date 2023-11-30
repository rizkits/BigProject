package panel_overview;

import java.awt.Color;
import java.awt.Font;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.NumberFormat;
import javax.swing.JOptionPane;
import koneksi.conek;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Locale;

public class Overview extends javax.swing.JPanel {

    String format(int nilai) {
        NumberFormat numberFormat = NumberFormat.getNumberInstance(new Locale("id", "ID"));
        String angkaformat = numberFormat.format(nilai);
        return angkaformat;
    }

    public Overview() {
        initComponents();
        this.setSize(1100, 768);
        Font fonth1 = new Font("Bodoni", Font.PLAIN, 36);
        default1.setFont(fonth1);
        Font fonth3 = new Font("Bodoni", Font.PLAIN, 20);
        label1.setFont(fonth3);
        label2.setFont(fonth3);
        label3.setFont(fonth3);
        labelbulanan.setFont(fonth3);
        jLabel2.setFont(fonth3);
        label1.setForeground(Color.white);
        label2.setForeground(Color.white);
        label3.setForeground(Color.white);
        Font fonth2 = new Font("Bodoni", Font.PLAIN, 29);
        labelhari.setFont(fonth2);
        labelbulan.setFont(fonth2);
        labeltahun.setFont(fonth2);
        labelhari.setForeground(Color.white);
        labelbulan.setForeground(Color.white);
        labeltahun.setForeground(Color.white);
        label1.setText("Transaksi Hari Ini");
        label2.setText("Transaksi Bulan Ini");
        label3.setText("Transaksi Tahun Ini");
        jLabel2.setText("Statistics");
//        == label laporan harian ==
        try {
            String datenow = LocalDate.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
            Statement statement = (Statement) conek.GetConnection().createStatement();
            ResultSet res = statement.executeQuery("SELECT sum(biaya) AS total_pengeluaran FROM pengeluaran WHERE tanggal= '" + datenow + "'");
            int pengeluaran = 0;
            while (res.next()) {
                pengeluaran = res.getInt("total_pengeluaran");
            }
            String tomorrow = datenow + " 23.59.59";
            datenow = datenow + " 00.00.00";
            ResultSet res1 = statement.executeQuery("SELECT SUM(pesanan.total_harga) AS total_pemasukan FROM pesanan WHERE pesanan.tgl_pesanan between \"" + datenow + "\" and \"" + tomorrow + "\";");
            int pemasukan = 0;
            while (res1.next()) {
                pemasukan = res1.getInt("total_pemasukan");
            }
            labelhari.setText("Rp " + format((pemasukan-pengeluaran)));
        } catch (Exception e) {
            System.out.println("gagal menampilkan transaksi hari ini karena " + e.getMessage());
        }
//        == label laporan bulanan ==
        try {
            String monthnow = LocalDate.now().format(DateTimeFormatter.ofPattern("yyyy-MM"));
            Statement statement = (Statement) conek.GetConnection().createStatement();
            String endOfMonth = monthnow + "-31 23.59.59";
            monthnow = monthnow + "-01 00.00.00";
            ResultSet res = statement.executeQuery("SELECT sum(biaya) AS total_pengeluaran FROM pengeluaran WHERE tanggal between \"" + monthnow + "\" and \"" + endOfMonth + "\";");
            int pengeluaran = 0;
            while (res.next()) {
                pengeluaran = res.getInt("total_pengeluaran");
            }
            ResultSet res1 = statement.executeQuery("SELECT SUM(pesanan.total_harga) AS total_pemasukan FROM pesanan WHERE pesanan.tgl_pesanan between \"" + monthnow + "\" and \"" + endOfMonth + "\";");
            int pemasukan = 0;
            while (res1.next()) {
                pemasukan = res1.getInt("total_pemasukan");
            }
            labelbulan.setText("Rp " + format((pemasukan-pengeluaran)));
        } catch (Exception e) {
            System.out.println("gagal menampilkan transaksi bulan ini karena " + e.getMessage());
        }
//        == label laporan tahunan ==
        try {
            String yearnow = LocalDate.now().format(DateTimeFormatter.ofPattern("yyyy"));
            Statement statement = (Statement) conek.GetConnection().createStatement();
            String endOfYear = yearnow + "-12-31 23.59.59";
            yearnow = yearnow + "-01-01 00.00.00";
            ResultSet res = statement.executeQuery("SELECT sum(biaya) AS total_pengeluaran FROM pengeluaran WHERE tanggal between \"" + yearnow + "\" and \"" + endOfYear + "\";");
            int pengeluaran = 0;
            while (res.next()) {
                pengeluaran = res.getInt("total_pengeluaran");
            }
            ResultSet res1 = statement.executeQuery("SELECT SUM(pesanan.total_harga) AS total_pemasukan FROM pesanan WHERE pesanan.tgl_pesanan between \"" + yearnow + "\" and \"" + endOfYear + "\";");
            int pemasukan = 0;
            while (res1.next()) {
                pemasukan = res1.getInt("total_pemasukan");
            }
            labeltahun.setText("Rp " + format((pemasukan-pengeluaran)));
        } catch (Exception e) {
            System.out.println("gagal menampilkan transaksi tahun ini karena " + e.getMessage());
        }
        labelbulanan.setText("Bulanan");
        Font fontlabelbulanan = new Font("Bodoni", Font.PLAIN, 12);
        labelbulanini.setFont(fontlabelbulanan);
        labelbulanini.setForeground(new Color(110, 110, 110));
        labelbulanlalu.setFont(fontlabelbulanan);
        labelbulanlalu.setForeground(new Color(110, 110, 110));
        Font fontlabelvaluebulanan = new Font("Bodoni", Font.PLAIN, 14);
        labelvaluebulanini.setFont(fontlabelvaluebulanan);
        labelvaluebulanlalu.setFont(fontlabelvaluebulanan);
        jLabel1.setFont(fontlabelvaluebulanan);
        jLabel1.setText("Traffic Statment");
        labelbulanini.setText("Bulan Ini");
        labelbulanlalu.setText("Bulan Lalu");
        labelvaluebulanlalu.setText("+ " + "60.0" + "%");
//        == persentase bulan ini ==
        try {
            String monthnow = LocalDate.now().format(DateTimeFormatter.ofPattern("yyyy-MM"));
            Statement statement = (Statement) conek.GetConnection().createStatement();
//            == bulan ini ==
            String endOfMonth = monthnow + "-31 23.59.59";
            monthnow = monthnow + "-01 00.00.00";
            ResultSet res = statement.executeQuery("SELECT sum(biaya) AS total_pengeluaran FROM pengeluaran WHERE tanggal between \"" + monthnow + "\" and \"" + endOfMonth + "\";");
            int pengeluaran = 0;
            while (res.next()) {
                pengeluaran = res.getInt("total_pengeluaran");
            }
            ResultSet res1 = statement.executeQuery("SELECT SUM(pesanan.total_harga) AS total_pemasukan FROM pesanan WHERE pesanan.tgl_pesanan between \"" + monthnow + "\" and \"" + endOfMonth + "\";");
            int pemasukan = 0;
            while (res1.next()) {
                pemasukan = res1.getInt("total_pemasukan");
            }
//            == bulan lalu ==
            String monthbulanlalu = LocalDate.now().minusMonths(1).format(DateTimeFormatter.ofPattern("yyyy-MM"));
            endOfMonth = monthbulanlalu + "-31 23.59.59";
            monthbulanlalu = monthbulanlalu + "-01 00.00.00";
            ResultSet res2 = statement.executeQuery("SELECT sum(biaya) AS total_pengeluaran FROM pengeluaran WHERE tanggal between \"" + monthbulanlalu + "\" and \"" + endOfMonth + "\";");
            int pengeluaranlalu = 0;
            while (res2.next()) {
                pengeluaranlalu = res2.getInt("total_pengeluaran");
            }
            ResultSet res3 = statement.executeQuery("SELECT SUM(pesanan.total_harga) AS total_pemasukan FROM pesanan WHERE pesanan.tgl_pesanan between \"" + monthbulanlalu + "\" and \"" + endOfMonth + "\";");
            int pemasukanlalu = 0;
            while (res3.next()) {
                pemasukanlalu = res3.getInt("total_pemasukan");
            }
//            == final ==
            float uangbulanini = pemasukan - pengeluaran;
            float uangbulanlalu = pemasukanlalu - pengeluaranlalu;
            float persen = (uangbulanini - uangbulanlalu) / uangbulanini * 100;
            float persentase = (float) (Math.round(persen * 10.0) / 10.0);
            if (persentase >= 0) {
                labelvaluebulanini.setText("+ " + persentase + "%");
            } else {
                labelvaluebulanini.setText(persentase + "%");
            }
        } catch (Exception e) {
            System.out.println("gagal menampilkan persentase transaksi bulan ini karena " + e.getMessage());
        }
//        == persentase bulan lalu ==
        try {
            String monthnow = LocalDate.now().minusMonths(1).format(DateTimeFormatter.ofPattern("yyyy-MM"));
            Statement statement = (Statement) conek.GetConnection().createStatement();
//            == bulan ini ==
            String endOfMonth = monthnow + "-31 23.59.59";
            monthnow = monthnow + "-01 00.00.00";
            ResultSet res = statement.executeQuery("SELECT sum(biaya) AS total_pengeluaran FROM pengeluaran WHERE tanggal between \"" + monthnow + "\" and \"" + endOfMonth + "\";");
            int pengeluaran = 0;
            while (res.next()) {
                pengeluaran = res.getInt("total_pengeluaran");
            }
            ResultSet res1 = statement.executeQuery("SELECT SUM(pesanan.total_harga) AS total_pemasukan FROM pesanan WHERE pesanan.tgl_pesanan between \"" + monthnow + "\" and \"" + endOfMonth + "\";");
            int pemasukan = 0;
            while (res1.next()) {
                pemasukan = res1.getInt("total_pemasukan");
            }
//            == bulan lalu ==
            String monthbulanlalu = LocalDate.now().minusMonths(2).format(DateTimeFormatter.ofPattern("yyyy-MM"));
            endOfMonth = monthbulanlalu + "-31 23.59.59";
            monthbulanlalu = monthbulanlalu + "-01 00.00.00";
            ResultSet res2 = statement.executeQuery("SELECT sum(biaya) AS total_pengeluaran FROM pengeluaran WHERE tanggal between \"" + monthbulanlalu + "\" and \"" + endOfMonth + "\";");
            int pengeluaranlalu = 0;
            while (res2.next()) {
                pengeluaranlalu = res2.getInt("total_pengeluaran");
            }
            ResultSet res3 = statement.executeQuery("SELECT SUM(pesanan.total_harga) AS total_pemasukan FROM pesanan WHERE pesanan.tgl_pesanan between \"" + monthbulanlalu + "\" and \"" + endOfMonth + "\";");
            int pemasukanlalu = 0;
            while (res3.next()) {
                pemasukanlalu = res3.getInt("total_pemasukan");
            }
//            == final ==
            float uangbulanini = pemasukan - pengeluaran;
            float uangbulanlalu = pemasukanlalu - pengeluaranlalu;
            float persen = (uangbulanini - uangbulanlalu) / uangbulanini * 100;
            float persentase = (float) (Math.round(persen * 10.0) / 10.0);
            if (persentase >= 0) {
                labelvaluebulanlalu.setText("+ " + persentase + "%");
            } else {
                labelvaluebulanlalu.setText(persentase + "%");
            }
        } catch (Exception e) {
            System.out.println("gagal menampilkan persentase transaksi bulan ini karena " + e.getMessage());
        }
        jButton1.setBorderPainted(false);
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        default1 = new javax.swing.JLabel();
        jPanel1 = new javax.swing.JPanel();
        label1 = new javax.swing.JLabel();
        labelhari = new javax.swing.JLabel();
        jPanel4 = new javax.swing.JPanel();
        label2 = new javax.swing.JLabel();
        labelbulan = new javax.swing.JLabel();
        jPanel5 = new javax.swing.JPanel();
        label3 = new javax.swing.JLabel();
        labeltahun = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jPanel3 = new javax.swing.JPanel();
        labelbulanan = new javax.swing.JLabel();
        labelbulanini = new javax.swing.JLabel();
        labelbulanlalu = new javax.swing.JLabel();
        labelvaluebulanini = new javax.swing.JLabel();
        labelvaluebulanlalu = new javax.swing.JLabel();
        jPanel6 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jPanel7 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();

        setBackground(new java.awt.Color(255, 255, 255));

        default1.setText("Overview Business");

        jPanel1.setBackground(new java.awt.Color(22, 166, 243));
        jPanel1.setPreferredSize(new java.awt.Dimension(253, 127));

        label1.setText("jLabel1");

        labelhari.setText("jLabel1");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap(108, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(labelhari)
                    .addComponent(label1))
                .addContainerGap(108, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap(42, Short.MAX_VALUE)
                .addComponent(label1)
                .addGap(10, 10, 10)
                .addComponent(labelhari)
                .addContainerGap(43, Short.MAX_VALUE))
        );

        jPanel4.setBackground(new java.awt.Color(22, 166, 243));
        jPanel4.setPreferredSize(new java.awt.Dimension(253, 127));

        label2.setText("jLabel1");

        labelbulan.setText("jLabel1");

        javax.swing.GroupLayout jPanel4Layout = new javax.swing.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addContainerGap(108, Short.MAX_VALUE)
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(labelbulan)
                    .addComponent(label2))
                .addContainerGap(108, Short.MAX_VALUE))
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addContainerGap(42, Short.MAX_VALUE)
                .addComponent(label2)
                .addGap(10, 10, 10)
                .addComponent(labelbulan)
                .addContainerGap(43, Short.MAX_VALUE))
        );

        jPanel5.setBackground(new java.awt.Color(22, 166, 243));
        jPanel5.setPreferredSize(new java.awt.Dimension(253, 127));

        label3.setText("jLabel1");

        labeltahun.setText("jLabel1");

        javax.swing.GroupLayout jPanel5Layout = new javax.swing.GroupLayout(jPanel5);
        jPanel5.setLayout(jPanel5Layout);
        jPanel5Layout.setHorizontalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel5Layout.createSequentialGroup()
                .addContainerGap(108, Short.MAX_VALUE)
                .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(labeltahun)
                    .addComponent(label3))
                .addContainerGap(108, Short.MAX_VALUE))
        );
        jPanel5Layout.setVerticalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel5Layout.createSequentialGroup()
                .addContainerGap(42, Short.MAX_VALUE)
                .addComponent(label3)
                .addGap(10, 10, 10)
                .addComponent(labeltahun)
                .addContainerGap(43, Short.MAX_VALUE))
        );

        jPanel2.setBackground(new java.awt.Color(255, 255, 255));
        jPanel2.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        jPanel2.setPreferredSize(new java.awt.Dimension(591, 405));

        jLabel2.setText("jLabel2");

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(43, 43, 43)
                .addComponent(jLabel2)
                .addContainerGap(509, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(26, 26, 26)
                .addComponent(jLabel2)
                .addContainerGap(361, Short.MAX_VALUE))
        );

        jPanel3.setBackground(new java.awt.Color(230, 230, 230));
        jPanel3.setPreferredSize(new java.awt.Dimension(0, 405));

        labelbulanan.setText("jLabel1");

        labelbulanini.setText("jLabel1");

        labelbulanlalu.setText("jLabel1");

        labelvaluebulanini.setText("jLabel1");

        labelvaluebulanlalu.setText("jLabel1");

        jPanel6.setBackground(new java.awt.Color(245, 245, 245));
        jPanel6.setPreferredSize(new java.awt.Dimension(264, 238));

        jLabel1.setText("jLabel1");

        jPanel7.setBackground(new java.awt.Color(255, 255, 255));
        jPanel7.setPreferredSize(new java.awt.Dimension(240, 183));

        jButton1.setText("jButton1");

        javax.swing.GroupLayout jPanel7Layout = new javax.swing.GroupLayout(jPanel7);
        jPanel7.setLayout(jPanel7Layout);
        jPanel7Layout.setHorizontalGroup(
            jPanel7Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel7Layout.createSequentialGroup()
                .addContainerGap(85, Short.MAX_VALUE)
                .addComponent(jButton1)
                .addGap(80, 80, 80))
        );
        jPanel7Layout.setVerticalGroup(
            jPanel7Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel7Layout.createSequentialGroup()
                .addContainerGap(136, Short.MAX_VALUE)
                .addComponent(jButton1)
                .addGap(24, 24, 24))
        );

        javax.swing.GroupLayout jPanel6Layout = new javax.swing.GroupLayout(jPanel6);
        jPanel6.setLayout(jPanel6Layout);
        jPanel6Layout.setHorizontalGroup(
            jPanel6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel6Layout.createSequentialGroup()
                .addGap(24, 24, 24)
                .addComponent(jLabel1)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel6Layout.createSequentialGroup()
                .addContainerGap(12, Short.MAX_VALUE)
                .addComponent(jPanel7, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(12, Short.MAX_VALUE))
        );
        jPanel6Layout.setVerticalGroup(
            jPanel6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel6Layout.createSequentialGroup()
                .addGap(15, 15, 15)
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jPanel7, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(12, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addGap(86, 86, 86)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(labelbulanan)
                    .addGroup(jPanel3Layout.createSequentialGroup()
                        .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(labelbulanini)
                            .addComponent(labelvaluebulanini))
                        .addGap(48, 48, 48)
                        .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(labelvaluebulanlalu)
                            .addComponent(labelbulanlalu))))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel3Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jPanel6, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addGap(25, 25, 25)
                .addComponent(labelbulanan)
                .addGap(30, 30, 30)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(labelbulanini)
                    .addComponent(labelbulanlalu))
                .addGap(11, 11, 11)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(labelvaluebulanini)
                    .addComponent(labelvaluebulanlalu))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jPanel6, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(41, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(default1)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addGroup(layout.createSequentialGroup()
                .addGap(85, 85, 85)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, 0)
                        .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, 338, Short.MAX_VALUE))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 85, Short.MAX_VALUE)
                        .addComponent(jPanel4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 85, Short.MAX_VALUE)
                        .addComponent(jPanel5, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(86, 86, 86))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap(60, Short.MAX_VALUE)
                .addComponent(default1)
                .addGap(40, 40, 40)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jPanel5, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jPanel4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(40, 40, 40)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jPanel3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(80, Short.MAX_VALUE))
        );
    }// </editor-fold>//GEN-END:initComponents

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel default1;
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JPanel jPanel6;
    private javax.swing.JPanel jPanel7;
    private javax.swing.JLabel label1;
    private javax.swing.JLabel label2;
    private javax.swing.JLabel label3;
    private javax.swing.JLabel labelbulan;
    private javax.swing.JLabel labelbulanan;
    private javax.swing.JLabel labelbulanini;
    private javax.swing.JLabel labelbulanlalu;
    private javax.swing.JLabel labelhari;
    private javax.swing.JLabel labeltahun;
    private javax.swing.JLabel labelvaluebulanini;
    private javax.swing.JLabel labelvaluebulanlalu;
    // End of variables declaration//GEN-END:variables
}

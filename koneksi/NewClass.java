package koneksi;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class NewClass {

    public static void main(String[] args) {
        try {
            LocalDateTime today = LocalDateTime.now();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd hh-mm-ss");
            String datenow = today.format(formatter);
            LocalDateTime yesterday = today.minusSeconds(86399);
            String dateyesterday =yesterday.format(formatter);
            System.out.println(datenow);
            System.out.println(dateyesterday);
        } catch (Exception e) {
            System.out.println("error " + e.getMessage());
        }
    }
}

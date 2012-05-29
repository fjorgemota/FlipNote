/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 *
 * @author fernando_mota
 */
public class Data {
    public static String getDateTime() {
        return getDateByFormat("yyyy/MM/dd HH:mm:ss");
    }
    public static String getDate() {
        return getDateByFormat("yyyy/MM/dd");
    }
    public static String getDateTime(int plus) {
        return getDateByFormat("yyyy/MM/dd HH:mm:ss", plus);
    }
    public static String getDate(int plus) {
        return getDateByFormat("yyyy/MM/dd", plus);
    }
    public static String getDateByFormat(String format) {
        DateFormat dateFormat = new SimpleDateFormat(format);
        Date date = new Date();
        return dateFormat.format(date);
    }
    public static String getDateByFormat(String format, int plus) {
        DateFormat dateFormat = new SimpleDateFormat(format);
        Calendar calendario = Calendar.getInstance();
        calendario.add(Calendar.SECOND, plus);
        Date date = calendario.getTime();
        return dateFormat.format(date);
    }
    
}

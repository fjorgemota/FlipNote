/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 *
 * @author fernando_mota
 */
public class Data {
    public static String getDateTime() {
        return getDateByFormat("yyyy-MM-dd HH:mm:ss");
    }
    public static Date getDateTime(String s) {
        return getDateFromString(s, "yyyy-MM-dd HH:mm:ss");
    }
    public static String getDateTime(Date data) {
        return getStringByFormat(data, "yyyy-MM-dd HH:mm:ss");
    }
    public static String getDate() {
        return getDateByFormat("yyyy-MM-dd");
    }
    public static String getDate(Date data) {
        return getStringByFormat(data, "yyyy-MM-dd");
    }
    public static Date getDate(String s) {
        return getDateFromString(s, "yyyy-MM-dd");
    }
    public static String getDateTime(int plus) {
        return getDateByFormat("yyyy-MM-dd HH:mm:ss", plus);
    }
    public static Date getDateTime(String s, int plus) {
        return getDateFromString(s, "yyyy-MM-dd HH:mm:ss", plus);
    }
    public static String getDateTime(Date data, int plus) {
        return getStringByFormat(data, "yyyy-MM-dd HH:mm:ss", plus);
    }
    public static String getDate(int plus) {
        return getDateByFormat("yyyy-MM-dd", plus);
    }
    public static Date getDate(String s, int plus) {
        return getDateFromString(s, "yyyy-MM-dd", plus);
    }
    public static String getDate(Date data, int plus) {
        return getStringByFormat(data, "yyyy-MM-dd", plus);
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
    public static String getStringByFormat(Date date, String format) {
        DateFormat dateFormat = new SimpleDateFormat(format);
        return dateFormat.format(date);
    }
    public static String getStringByFormat(Date date, String format, int plus) {
        DateFormat dateFormat = new SimpleDateFormat(format);  
        Calendar calendario = Calendar.getInstance();
        calendario.setTime(date);
        calendario.add(Calendar.SECOND, plus);
        Date data = calendario.getTime();
        return dateFormat.format(data);
    }
    public static Date getDateFromString(String s, String format){
        DateFormat dateFormat = new SimpleDateFormat(format);  
        try {
            return dateFormat.parse(s);
        } catch (ParseException ex) {
            System.out.println(ex.getMessage());
            return null;
        }
    }
    public static Date getDateFromString(String s, String format, int plus){
        DateFormat dateFormat = new SimpleDateFormat(format);  
        Calendar calendario = Calendar.getInstance();
        try {
            calendario.setTime(dateFormat.parse(s));
        } catch (ParseException ex) {
            return null;
        }
        calendario.add(Calendar.SECOND, plus);
        Date date = calendario.getTime();
        return date;
    }
}

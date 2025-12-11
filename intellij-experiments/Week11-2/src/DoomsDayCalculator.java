import javax.swing.*;
import java.awt.*;

//
// Day of the week calculator
// HL 2016
//
public class DoomsDayCalculator {
    static int monthDays[] = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };
    static int centuryDays[] = { 5, 3, 2, 0 };
    static int doomsdays[] = { 3, 28, 7, 4, 9, 6, 11, 8, 5, 10, 7, 12 };

    static boolean leapYear(int year) {
        return ((year % 400) != 0) && ((year % 4) == 0);
    }

    static boolean validDate(int day, int month, int year) {
        if (year < 1583)
            return false; // Gregorian calendar started in 1582
        if (month < 1 || month > 12)
            return false;
        if (day < 1)
            return false;
        if (month == 2) {
            if (leapYear(year)) {
                if (day > 29)
                    return false;
            } else {
                if (day > 28)
                    return false;
            }
        } else {
            if (day > monthDays[month - 1])
                return false;
        }
        return true;
    }

    public static int getDayOfWeek(int day, int month, int year) {
        // Get the day of the week for any Gregorian date using Conway's doomsday
        // algorithm
        // input - calendar day, calendar month (Jan = 1, Feb = 2...), calendar year.
        // return: day of week as 0 (Sun), 1 (Mon) ... 6 (Sat), -1 (invalid date)

        if (!validDate(day, month, year))
            return -1;
        // valid date, we are good to go.
        int centuryDay = centuryDays[((year / 100) - 14) % 4];
        boolean isLeapYear = leapYear(year);

        year = year % 100; // from now on we use year in the century.
        int anchorDay = year / 12 + (year % 12) + (year % 12) / 4;

        int doomsday = doomsdays[month - 1];
        if (isLeapYear && month < 3)
            doomsday++;

        // the +35 ensures a positive number before taking the modulus (and 35%7 = 0)
        return (centuryDay + anchorDay + day - doomsday + 35) % 7;
    }

    public static void main(String[] args) {
        JFrame frame = new JFrame();
        JPanel panel = new JPanel();

        JTextField doomsD = new JTextField(4);
        JTextField doomsMonth = new JTextField(4);
        JTextField doomsYear = new JTextField(4);

        JLabel dDay = new JLabel("Day ");
        JLabel dMonth = new JLabel("Month ");
        JLabel dYear = new JLabel("Year");

        JButton getDay = new JButton("Get Day");
        JLabel conclusion = new JLabel("Conclusion: ");

        getDay.addActionListener(e -> {
            int keyDate = Integer.parseInt(doomsD.getText());
            int keyMonth = Integer.parseInt(doomsMonth.getText());
            int keyYear = Integer.parseInt(doomsYear.getText());
            int checks = getDayOfWeek(keyDate, keyMonth, keyYear);
            String resultDay = "";

            if(checks == -1) {
                resultDay = "Invalid Day";
            } else if(checks == 0) {
                resultDay = "Sunday";
            } else if(checks == 1) {
                resultDay = "Monday";
            }  else if(checks == 2) {
                resultDay = "Tuesday";
            }  else if(checks == 3) {
                resultDay = "Wednesday";
            }  else if(checks == 4) {
                resultDay = "Thursday";
            }  else if(checks == 5) {
                resultDay = "Friday";
            }  else if(checks == 6) {
                resultDay = "Saturday";
            }

            conclusion.setText("Conclusion: " + keyDate + "/" + keyMonth + "/" + keyYear + " is a " + resultDay);
        });

        panel.add(dDay);
        panel.add(doomsD);
        panel.add(dMonth);
        panel.add(doomsMonth);
        panel.add(dYear);
        panel.add(doomsYear);
        panel.add(getDay);
        panel.add(conclusion);

        frame.add(panel); // Add panel to the frame
        frame.setSize(400, 200); // Made frame size smaller since you don't need 400x400 for this layout
        frame.setLocationRelativeTo(null);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setVisible(true);
    }
}

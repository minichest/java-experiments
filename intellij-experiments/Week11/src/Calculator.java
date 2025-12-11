import javax.swing.*;
import java.awt.*;
import java.util.function.Consumer;

public class Calculator {
    public static void main(String[] args) {
        JFrame frame = new JFrame("Calculator");
        JPanel panel = new JPanel(new FlowLayout(FlowLayout.CENTER, 10, 10));

        JTextField input1 = new JTextField(10);
        JTextField input2 = new JTextField(10);
        JLabel answer = new JLabel("Answer: ");

        Consumer<String> calculateAction = operator -> {
            try {
                float val1 = Float.parseFloat(input1.getText());
                float val2 = Float.parseFloat(input2.getText());

                float result = 0;

                if(operator.equals("+")) {
                    result = val1 + val2;
                } else if(operator.equals("-")) {
                    result = val1 - val2;
                } else if(operator.equals("*")) {
                    result = val1 * val2;
                } else if(operator.equals("/")) {
                    result = val1 / val2;
                }

                answer.setText("Answer: " + result);

            } catch (NumberFormatException ex) {
                answer.setText("Error - Invalid Input");
            }
        };

        JButton button1 = new JButton("+");
        JButton button2 = new JButton("-");
        JButton button3 = new JButton("*");
        JButton button4 = new JButton("/");

        button1.addActionListener(e -> calculateAction.accept("+"));
        button2.addActionListener(e -> calculateAction.accept("-"));
        button3.addActionListener(e -> calculateAction.accept("*"));
        button4.addActionListener(e -> calculateAction.accept("/"));

        // Add components to the panel
        panel.add(input1);
        panel.add(input2);
        panel.add(button1);
        panel.add(button2);
        panel.add(button3);
        panel.add(button4);
        panel.add(answer);

        // Frame setup (placed at the end, after all components are added)
        frame.add(panel); // Add panel to the frame
        frame.setSize(400, 200); // Made frame size smaller since you don't need 400x400 for this layout
        frame.setLocationRelativeTo(null);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setVisible(true);
    }
}





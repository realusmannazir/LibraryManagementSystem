import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

public class JavaFXLoginScreen extends Application {

    private TextField usernameField;
    private PasswordField passwordField;
    private Label errorLabel;

    @Override
    public void start(Stage primaryStage) {
        usernameField = new TextField();
        usernameField.setPromptText("Username");

        passwordField = new PasswordField();
        passwordField.setPromptText("Password");

        errorLabel = new Label();

        Button loginButton = new Button("Login");
        loginButton.setOnAction(e -> loginAction());

        VBox layout = new VBox(10);
        layout.getChildren().addAll(usernameField, passwordField, loginButton, errorLabel);

        Scene scene = new Scene(layout, 300, 200);
        primaryStage.setScene(scene);
        primaryStage.setTitle("Login Screen");
        primaryStage.show();
    }

    private void loginAction() {
        String username = usernameField.getText();
        String password = passwordField.getText();

        if (username.equals("admin") && password.equals("1234")) {
            errorLabel.setText("Login successful!");
        } else {
            errorLabel.setText("Invalid username or password.");
        }
    }

    public static void main(String[] args) {
        launch(args);
    }
}

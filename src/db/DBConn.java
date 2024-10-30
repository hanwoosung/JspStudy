package db;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DBConn {
    private static DBConn instance;
    private Connection conn;

    private static final String DRIVER_NAME = "org.mariadb.jdbc.Driver";
    private String url;
    private String username;
    private String password;

    private DBConn() {
        try {
            Properties properties = new Properties();
            try (InputStream input = DBConn.class.getClassLoader().getResourceAsStream("resources/db.properties")) {
                if (input == null) {
                    throw new RuntimeException("db.properties 파일을 찾을 수 없습니다.");
                }
                properties.load(input);
            } catch (IOException e) {
                e.printStackTrace();
            }

            this.url = properties.getProperty("db.url");
            this.username = properties.getProperty("db.username");
            this.password = properties.getProperty("db.password");

            Class.forName(DRIVER_NAME);
            this.conn = DriverManager.getConnection(url, username, password);
            System.out.println("드라이버에 연결되었습니다");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public static DBConn getInstance() {
        if (instance == null) {
            instance = new DBConn();
        }
        return instance;
    }

    public Connection getConnection() {
        return this.conn;
    }
}

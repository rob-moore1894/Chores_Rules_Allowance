package dao;

import com.mysql.cj.jdbc.Driver;
import model.Chore;
import model.Rule;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ChoresDao implements ChoresInterface {
    private Connection connection = null;

    public ChoresDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the chores database table!", e);
        }
    }

    @Override
    public List<Chore> all() {
        Statement sql = null;
        try {
            sql = connection.createStatement();
            ResultSet rs = sql.executeQuery("SELECT * FROM chores");
            return createChoresListFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving rules", e);
        }
    }

    @Override
    public List<Chore> createChoresListFromResults(ResultSet rs) {
        try {
            List<Chore> chores = new ArrayList<>();
            while (rs.next()) {
                chores.add(extractChore(rs));
            }
            return chores;
        } catch (SQLException  e) {
            throw new RuntimeException("error creating chore list", e);
        }
    }
    @Override
    public Chore extractChore(ResultSet rs) {
        try {
            return new Chore(
                    rs.getLong("child_id"),
                    rs.getString("chore"),
                    rs.getString("day"));
        } catch (SQLException e){
            throw new RuntimeException("error creating chore object", e);
        }
    }
    @Override
    public Long insert(Rules rule) {
        return null;
    }


}

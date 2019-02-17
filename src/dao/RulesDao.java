package dao;

import com.mysql.cj.jdbc.Driver;
import model.Rule;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class RulesDao implements Rules {
    private Connection connection = null;

    public RulesDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    public List<Rule> all(){
        Statement sql = null;
        try {
            sql = connection.createStatement();
            ResultSet rs = sql.executeQuery("SELECT * FROM rules");
                return createRulesListFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving rules", e);
        }
    }

    private List<Rule> createRulesListFromResults(ResultSet rs) throws SQLException {
        List<Rule> rules = new ArrayList<>();
        while (rs.next()) {
            rules.add(extractRule(rs));
        }
        return rules;
    }

    private Rule extractRule(ResultSet rs) throws SQLException {
        Rule addedRule = new Rule();
        addedRule.setRule(rs.getString("rule"));
        return addedRule;
    }

    @Override
    public Long insert(dao.Rules rule) {
        return null;
    }

}

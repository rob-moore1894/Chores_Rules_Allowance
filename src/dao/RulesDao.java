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
            throw new RuntimeException("Error connecting to the rules database table!", e);
        }
    }

    public List<Rule> all(){
        Statement sql = null;
        try {
            sql = connection.createStatement();
            ResultSet rs = sql.executeQuery("SELECT * FROM rules");
//            System.out.println(rs);
            return createRulesListFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving rules", e);
        }
    }

    public List<Rule> createRulesListFromResults(ResultSet rs){
        try {
           List<Rule> rules = new ArrayList<>();
           while (rs.next()) {
               rules.add(extractRule(rs));
           }
           return rules;
       } catch (SQLException  e) {
           throw new RuntimeException("error creating rule list", e);
       }
    }

    public Rule extractRule(ResultSet rs){
        try {
        System.out.println("inside create rule object");
            return new Rule(
                    rs.getLong("rule_id"),
                    rs.getString("rule"));
        } catch (SQLException e){
            throw new RuntimeException("error creating rule object", e);
        }
    }

    @Override
    public Long insert(dao.Rules rule) {
        return null;
    }

}

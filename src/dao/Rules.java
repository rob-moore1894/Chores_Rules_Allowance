package dao;

import model.Rule;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public interface Rules {
    // List all of the rules
    List<Rule> all();
    // Insert a new rule and return the rule's id
    Long insert(Rules rule);

    Rule extractRule(ResultSet rs);

    List<Rule> createRulesListFromResults(ResultSet rs);
}

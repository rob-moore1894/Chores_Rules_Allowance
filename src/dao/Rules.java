package dao;

import model.Rule;

import java.util.List;

public interface Rules {
    // List all of the rules
    List<Rule> all();
    // Insert a new rule and return the rule's id
    Long insert(Rules rule);
}

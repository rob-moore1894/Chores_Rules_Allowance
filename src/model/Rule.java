package model;

public class Rule {
    private long rule_id;
    private String rule;

    public Rule(long rule_id, String rule) {
        this.rule_id = rule_id;
        this.rule = rule;
    }

    public long getRule_id() {
        return rule_id;
    }

    public void setRule_id(long rule_id) {
        this.rule_id = rule_id;
    }

    public String getRule() {
        return rule;
    }

    public void setRule(String rule) {
        this.rule = rule;
    }
}

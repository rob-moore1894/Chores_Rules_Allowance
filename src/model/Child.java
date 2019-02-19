package model;

public class Child {
    private long child_id;
    private String name;

    public Child(long child_id, String name) {
        this.child_id = child_id;
        this.name = name;
    }

    public long getChild_id() {
        return child_id;
    }

    public void setChild_id(long child_id) {
        this.child_id = child_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}

package model;

public class Chore {
    private long chore_id;
    private String chore;
    private String day;

    public Chore(long chore_id, String chore, String day) {
        this.chore_id = chore_id;
        this.chore = chore;
        this.day = day;
    }

    public long getChore_id() {
        return chore_id;
    }

    public void setChore_id(long chore_id) {
        this.chore_id = chore_id;
    }

    public String getChore() {
        return chore;
    }

    public void setChore(String chore) {
        this.chore = chore;
    }

    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
    }
}

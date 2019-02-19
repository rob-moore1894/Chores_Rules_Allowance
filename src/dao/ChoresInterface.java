package dao;

import model.Chore;
import model.Rule;

import java.sql.ResultSet;
import java.util.List;

public interface ChoresInterface {
    List<Chore> all();

    Long insert(Rules rule);

    Chore extractChore(ResultSet rs);

    List<Chore> createChoresListFromResults(ResultSet rs);
}

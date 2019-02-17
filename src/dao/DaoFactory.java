package dao;

public class DaoFactory {
    private static Rules rulesDao;
    private static Config config = new Config();

    public static Rules getRulesDao() {
        if (rulesDao == null) {
            rulesDao = new RulesDao(config);
        }
        return rulesDao;
    }
}

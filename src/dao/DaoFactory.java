package dao;

public class DaoFactory {
    private static Rules rulesDao;
    private static ChoresDao choresDao;
    private static Config config = new Config();

    public static Rules getRulesDao() {
        if (rulesDao == null) {
            rulesDao = new RulesDao(config);
        }
        return rulesDao;
    }

    public static ChoresDao getChoresDao(){
        if (choresDao == null) {
            choresDao = new ChoresDao(config);
        }
        return choresDao;
    }
}

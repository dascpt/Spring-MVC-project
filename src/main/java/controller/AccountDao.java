package controller;

import javax.sql.DataSource;

public interface AccountDao {
	public void setDataSource(DataSource ds);
	
	public Account findByUser_mail(String user_mail);
	
	public boolean checklogin(String user_mail, String password);
}

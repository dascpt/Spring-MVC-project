package controller;

import java.util.Optional;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

public class AccountJDBCTemplate implements AccountDao {
	private DataSource dataSource;
	private JdbcTemplate jdbcTemplateObject;
	
	public void setDataSource(DataSource ds) {
		this.dataSource = ds;
		this.jdbcTemplateObject = new JdbcTemplate(dataSource);
	}

	public Account findByUser_mail(String user_mail){
		String SQL = "select * from account where user_mail=?";
		
		Account acc = jdbcTemplateObject.queryForObject(SQL, new Object[]{user_mail}, new AccountMapper());
				
		return acc;
	}

	
	public boolean checklogin(String username, String password) {
		Account acc = findByUser_mail(username);
		if(acc.getUser_mail().equals(username) && acc.getPassword().equals(password)) {
			return true;
		}
		return false;
	}
}

package controller;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class AccountMapper implements RowMapper<Account> {
	public Account mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		Account acc = new Account();
		acc.setUser_mail(rs.getString("user_mail"));
		acc.setPassword(rs.getString("password"));
		acc.setAccount_role(rs.getInt("account_role"));
		acc.setUser_name(rs.getString("user_name"));
		acc.setUser_address(rs.getString("user_address"));
		acc.setUser_phone(rs.getString("user_phone"));
		
		return acc;
	}
}

package com.opbank.app.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.stereotype.Service;

@Service
public class DatabaseConnectionService {
	
	private DataSource dataSource;
	
	public void testconnection() throws SQLException {
		try (Connection connection = dataSource.getConnection()) {
			System.out.println("Successfully connected to the database");
			
		} catch (SQLException ex) {
			System.out.println("Failed to connect to the database");
			throw ex;
		}
	}
}

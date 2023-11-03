package com.opbank.app.entity;

import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "bot_response_history")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class BotResponseHistory {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	@Column(name = "session_id")
	private long sessionId;
	
	@Column(name = "user_request")
	private String userRequest;
	
	@Column(name = "bot_response")
	private String botResponse;
	
	@Column(name = "user_id")
	private long userId;
	
	@Column(name = "inserted_by")
	private String insertedBy;
	
	@Column(name = "inserted_date")
	private LocalDateTime insertedDate;	
	
	@Column(name = "updated_by")
	private String updatedBy;
	
	@Column(name = "updated_date")
	private LocalDateTime updatedDate;	

}	

package co.grandcircus.Lab22_May2019;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class MemberJbdcDao {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public List<Member> findAllMembers(){
		return jdbcTemplate.query("select * from Users", new BeanPropertyRowMapper<Member>(Member.class));
	}
	
	public int addMember(String firstName, String lastName, String pNumber, String email, String password, String bDate,
			String gender, String description) {
		String addQuery = "insert into Users(firstname, lastname, phonenum, email, password, birthdate, gender, description) values(?,?,?,?,?,?,?,?)";
		return jdbcTemplate.update(addQuery, firstName, lastName, pNumber, email, password, bDate, gender, description);
	}
	
	public List<Item> findAllItems(){
		return jdbcTemplate.query("select * from Items", new BeanPropertyRowMapper<Item>(Item.class));
	}

}

package passport;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class PassportDao implements PassportImpl {

	
	private DataSource datasource;
	private JdbcTemplate jdbctemp;

	@Autowired
	public void setDatasource(DataSource datasource) {
		this.datasource = datasource;
		this.jdbctemp = new JdbcTemplate(datasource);
	}

	public void insert(Passport p) {
		// TODO Auto-generated method stub
		String sql = "insert into passport(applicationFor,applicationType,firstname,lastname,gender,dob,age,email,password,address,address2,city,state,zip,townBirth,maritialStatus,pan,voterId,aadhar) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) ";
		jdbctemp.update(sql,p.getApplicationFor(),
				p.getApplicationType(),
				p.getFirstname(), 
				p.getLastname(),
				p.getGender(),
				p.getDob(),
				p.getAge(),
				p.getEmail(),
				p.getPassword(),
				p.getAddress(),
				p.getAddress2(),
				p.getCity(),
				p.getState(),
				p.getZip(),
				p.getTownBirth(), 
				p.getMaritialStatus(),
				p.getPan(),
				p.getVoterId(),
				p.getAadhar());
		System.out.println("one row inserted");

	}

	
	
	@SuppressWarnings("rawtypes")
	public List<Passport> viewId() {
		String sql="select max(application_num) from passport";
		@SuppressWarnings("unchecked")
		List<Passport> ins = jdbctemp.query(sql,new BeanPropertyRowMapper(Passport.class));
		return ins;
		
	}

}

package xyz.itwill08.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

//검색행의 컬럼값을 객체 필드에 저장하는 매핑정보를 제공하여 객체 반환
public class StudentRowMapper implements RowMapper<Student> {

	@Override
	public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
		Student student=new Student();
		student.setNo(rs.getInt("no"));
		student.setName(rs.getString("name"));
		student.setPhone(rs.getString("phone"));
		student.setAddress(rs.getString("address"));
		student.setBirthday(rs.getString("birthday"));
		return student;
	}

}

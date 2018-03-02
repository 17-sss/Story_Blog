package com.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

 
public class DiaryDBBean {
//============================================== �̱���!	
	private static DiaryDBBean instance = new DiaryDBBean();
	private DiaryDBBean() {

	}
	
	
	public static DiaryDBBean getInstance() {
		return instance;
	}
	
//============================================== �̱���!
	
	
	public static Connection getConnection() {
		Connection con = null;
		try {
			String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:orcl";
			String dbId = "scott";
			String dbPass = "tiger";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
	
	
	
	
	public void close (Connection con, ResultSet rs, PreparedStatement pstmt) {
		if (pstmt != null) try {pstmt.close();} catch (SQLException ex) {}
		if (con != null) try {con.close();} catch (SQLException ex) {}
		if (rs != null) try {rs.close();} catch (SQLException ex) {}
	}
	
	// �ϱ� �߰�
	public void insertDiary(DiaryDataBean diary) {
		String sql="";
		Connection conn = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int number=0;
		try {
			pstmt = conn.prepareStatement("select diarySer.nextval from dual");
			rs = pstmt.executeQuery();
			if (rs.next())
				number = rs.getInt(1) + 1;
			else number = 1;
			System.out.println(diary.getUser_num());
			sql = "insert into diary(num, user_num, diaryid, subject, cdate, content, ip)";
			sql += "values(?,?,?,?, sysdate, ?, ?)";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, number);
			pstmt.setInt(2, diary.getEmail()); // !!
			pstmt.setString(3, diary.getDiaryid());
			pstmt.setString(4, diary.getSubject());
			pstmt.setString(5, diary.getContent());
			pstmt.setString(6, diary.getIp());
			
			String userid = "��"
			select * from ���̾ where ���̾userno = (select userno from ��������Ʈ where ��������Ʈ.userid = #{userid})

			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(conn, rs, pstmt);
		}
		
	}
	
	// �� �ϱ����� �ϱ� ��
	public int getDiaryCount(String diaryid) throws SQLException {
		int x = 0;
		String sql = "SELECT nvl(count(*),0) FROM diary WHERE diaryid = ?";
		Connection conn = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int number = 0;
		
		try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, diaryid);
		
		rs = pstmt.executeQuery();
		if (rs.next()) { x = rs.getInt(1); }
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close(conn, rs, pstmt);
		}
		
		return x;
	}
	
	// �ϱ�(���) ��������
	public List getDiaries(int startRow, int endRow, int user_num, String diaryid) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List diaryList = null;
		String sql = "";
		try {
			conn = getConnection();
			sql = "select * from (select rownum rnum, b.* from (select num, user_num, diaryid, subject, cdate, content, ip"
					+ "from diary where diaryid = ? and user_num = ?) b) where rnum between ? and ? order by cdate desc";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, diaryid);
			pstmt.setInt(2, user_num);
			pstmt.setInt(3, startRow);
			pstmt.setInt(4, endRow);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				diaryList = new ArrayList();
				do {
					DiaryDataBean diary = new DiaryDataBean();
					diary.setNum(rs.getInt("num"));
					diary.setUser_num(rs.getInt("user_num"));
					diary.setDiaryid(rs.getString("diaryid"));
					diary.setSubject(rs.getString("subject"));
					diary.setCdate(rs.getTimestamp("cdate"));
					diary.setContent(rs.getString("content"));
					diary.setIp(rs.getString("ip"));
					diaryList.add(diary);
				} while (rs.next()); 
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			close(conn, rs, pstmt);
		}
		return diaryList;
		
	}
	
	// �ϱ� �����Ҷ� ���� �ҷ���.
	public DiaryDataBean getDiary(int num, int user_num, String diaryid) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DiaryDataBean diary = null;
		String sql = "";
		try {
			conn = getConnection();
			sql="select * from diary where num = ? and user_num = ? and diaryid = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setInt(2, user_num);
			pstmt.setString(3, diaryid);
			rs=pstmt.executeQuery();
			
			diary = new DiaryDataBean();
			if(rs.next()) {
				diary.setNum(rs.getInt("num"));
				diary.setUser_num(rs.getInt("user_num"));
				diary.setDiaryid(rs.getString("diaryid"));
				diary.setSubject(rs.getString("subject"));
				diary.setCdate(rs.getTimestamp("cdate"));
				diary.setContent(rs.getString("content"));
				diary.setIp(rs.getString("ip"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(conn, rs, pstmt);
		}
	
		return diary;
		
	}
	
	// �ϱ� ����Pro �޼ҵ� 
	public int updateDiary (DiaryDataBean diary) {
		String sql ="";
		Connection conn = getConnection();
		PreparedStatement pstmt = null;
		int chk= 0; // int ���� �ϳ� ����.
		ResultSet rs = null; 
		
		try {
			conn = getConnection();
			sql = "update diary set diaryid=?, subject=?, content=? where num=? and user_num = ?";
			pstmt = conn.prepareStatement(sql);
		
			pstmt.setString(1, diary.getDiaryid());
			pstmt.setString(2, diary.getSubject());
			pstmt.setString(3, diary.getContent());
			pstmt.setInt(4, diary.getNum());
			pstmt.setInt(5, diary.getUser_num());
			
			chk = pstmt.executeUpdate(); //�÷��� ������Ʈ�� �Ǿ����� ���ڸ� ��ȯ
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(conn, null, pstmt);
		}
		return chk;
		
	}
	
	public int deleteDiary (int num, int user_num, String diaryid) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "delete from diary where num=? and user_num = ? and diaryid =?";
		int x = -1;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setInt(2, user_num);
			pstmt.setString(3, diaryid);
			x=pstmt.executeUpdate();
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			close(conn, rs, pstmt);
		}
		return x;
		
	}
}


package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import dto.MemberDTO;



public class MemberDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	MemberDTO mDto = new MemberDTO();
	ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
	int result;
	
	//회원정보 id 로 검색 출력
	public int MemberSearch(String ckid) {
	try{
		conn= DBManager.getConnection();
		
		String sql =  "SELECT * FROM shopmember" 
				      + "WHERE SHOPID = ?";
	
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,ckid);
		
		rs = pstmt.executeQuery();
		
		if(rs.next() == true) {
			result = 1;
			System.out.println("검색되었습니다");
		}else{
			result = 0;
			System.out.println("실패하였습니다");
		} 
	    
	    } catch(Exception e) {
	    	e.printStackTrace();
	   
	    } finally{
		DBManager.close(conn, pstmt);
	    }
		return result;
		}
	

	// 로그인 메서드
	public MemberDTO cklogin(String shopid, String shoppw){
		try {
			conn = DBManager.getConnection();
			String sql = "SELECT * FROM shopmember WHERE shopid=? AND shoppw =?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, shopid);
			pstmt.setString(2, shoppw);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				shopid = rs.getString("shopid");
				shoppw = rs.getString("shoppw");
				String shopname = rs.getString("shopname"); 
				String shopzipnum = rs.getString("shopzipnum");
				String shopaddres1 = rs.getString("shopaddres1");
				String shopaddres2 = rs.getString("shopaddres2");
				String shopphone = rs.getString("shopphone");
				String shopemail = rs.getString("shopemail");
				Date regdate = rs.getDate("regdate");
				
				mDto = new MemberDTO(shopid, shoppw, shopname, shopzipnum, shopaddres1, shopaddres2, shopphone, shopemail, regdate);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			DBManager.close(conn, pstmt, rs);
		}
		return mDto;
	}
	
	
	public void MemberJoin(MemberDTO memberDto){
		try {
			conn = DBManager.getConnection();
				
			String sql = "INSERT INTO "
							+ "shopmember(shopid, shoppw, shopname, shopzipnum, shopaddres1, shopaddres2, shopphone, shopemail)"
							+ "VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
		
		pstmt = conn.prepareStatement(sql);
			
		pstmt.setString(1, memberDto.getShopid());
		pstmt.setString(2, memberDto.getShoppw());
		pstmt.setString(3, memberDto.getShopname());
		pstmt.setString(4, memberDto.getShopzipnum());
		pstmt.setString(5, memberDto.getShopaddres1());
		pstmt.setString(6, memberDto.getShopaddres2());	
		pstmt.setString(7, memberDto.getShopphone());
		pstmt.setString(8, memberDto.getShopemail());
		
		int result = pstmt.executeUpdate();
		
		if(result>0) {
			System.out.println("가입되었습니다");
		
		}else{
			System.out.println("가입 실패 되었습니다");
		}
		
		} catch (Exception e) {
		e.printStackTrace();
		
		}finally {	
			DBManager.close(conn, pstmt);	
		}
	}

	//회원정보수정
	public void MemberUpdate(MemberDTO memberDto) {
		try {
			conn= DBManager.getConnection();
			
			String sql="UPDATE shopmember SET shoppw=?, shopname=?, shopzipnum=?, shopaddres1=?, shopaddres2=?, shopphone=?, shopemail=? "
					+ "WHERE shopid= ?";
		
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, memberDto.getShoppw());
		pstmt.setString(2, memberDto.getShopname());
		pstmt.setString(3, memberDto.getShopzipnum());
		pstmt.setString(4, memberDto.getShopaddres1());
		pstmt.setString(5, memberDto.getShopaddres2());
		pstmt.setString(6, memberDto.getShopphone());
		pstmt.setString(7, memberDto.getShopemail());
		pstmt.setString(8, memberDto.getShopid());
		
		
		pstmt.executeUpdate();	
		
		}catch (Exception e) {
			e.printStackTrace();
		
		} finally {
			DBManager.close(conn, pstmt);
		}
		
		
	}
}
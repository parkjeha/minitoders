package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import dto.ProductDTO;

public class ProductDAO {
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
int restult = 0;
ArrayList<ProductDTO> bestList = new ArrayList<ProductDTO>();

public ArrayList<ProductDTO> listBestProduct() {
	bestList = new ArrayList<>();
	try {
		conn = DBManager.getConnection();
		String sql = "SELECT * FORM best_pro_view";
		pstmt = conn.prepareStatement(sql);
		
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			String p_code =rs.getString("p_code");
			String p_name =rs.getString("p_name");
			int p_price2 =rs.getInt("p_price2");
			String p_img =rs.getString("p_img");
			
			ProductDTO productDto = new ProductDTO(p_code, p_name, p_price2, p_img);
			bestList.add(productDto);
		}
			for(int i = 0; i < bestList.size(); i++){
				System.out.print(bestList.get(i).getP_code());
				System.out.print(bestList.get(i).getP_name());
				System.out.print(bestList.get(i).getP_price2());
				System.out.print(bestList.get(i).getP_img());
				System.out.println();
			}
		
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
	
	}
	
	return bestList;

}

}

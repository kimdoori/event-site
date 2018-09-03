package database;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Fruit;

public class FruitDAO {

	private static FruitDAO instance;

	private Connection connection;

	private FruitDAO() {

		try {
			System.out.println("연결");

			Class.forName("com.mysql.jdbc.Driver");

			connection = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/juju?useUnicode=true&characterEncoding=utf8", "root", "doori0228!");

		} catch (SQLException e) {

			System.out.println("데이터베이스 연결에 실패했습니다.");
			e.printStackTrace();

		} catch (ClassNotFoundException e) {
			System.out.println("클래스가 없습니다.");
			e.printStackTrace();

		}

	}

	public static FruitDAO getInstance() {

		if (instance == null)

			instance = new FruitDAO();

		return instance;

	}

	public int update(Fruit fruit) {
		PreparedStatement pstmt = null;


		int return_code = -1;

		try {

			pstmt = connection.prepareStatement("delete from fruit");
			pstmt.executeUpdate();

			String[] fruitStr = fruit.getFruit();
			String[] colorStr = fruit.getColor();
			int[] indexStr = fruit.getFruit_index();

			for (int i = 0; i < fruitStr.length; i++) {
				System.out.println(fruitStr[i]);
				pstmt = connection.prepareStatement("insert into fruit values(?,?,?)");
				pstmt.setString(1, fruitStr[i]);
				pstmt.setString(2, colorStr[i]);
				System.out.println(pstmt);
				if (indexStr[0] == i || indexStr[1] == i)
					pstmt.setInt(3, 1);
				else
					pstmt.setInt(3, 0);
				
				pstmt.executeUpdate();

			}


			return_code = 0;

		} catch (SQLException e) {

			System.out.println("업데이트에 실패했습니다.");
			e.printStackTrace();
			return_code = 1;

		} finally {

			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}

		}
		return return_code;
	}

	// 모든 게시물 조회
	public Fruit select() {

		PreparedStatement pstmt = null;

		ResultSet rs = null;
		Fruit fruit = new Fruit();

		try {

			pstmt = connection.prepareStatement("select * from fruit order by fruit");

			rs = pstmt.executeQuery();

			String[] fruitStr = new String[8];
			String[] colorStr = new String[8];
			int[] menuIndex = new int[2];

			int i = 0;
			int j = 0;

			while (rs.next()) {

				fruitStr[i] = rs.getString("fruit");
				colorStr[i] = rs.getString("color");

				if (rs.getInt("menu") == 1)
					menuIndex[j++] = i;

				i++;

			}
			
			fruit.setFruit(fruitStr);
			fruit.setColor(colorStr);
			fruit.setFruit_index(menuIndex);
			
			

		} catch (SQLException e) {

			System.out.println("모든 게시글 조회에 실패했습니다.");
			e.printStackTrace();

		} finally {

			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();

				}
		}

		return fruit;

	}

}

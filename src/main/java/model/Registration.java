package model;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import model.User;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

public class Registration {

	private Connection con;
	HttpSession se;
	public Registration(HttpSession session)
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3307","root","admin");
			this.se = session;
		}
		catch( ClassNotFoundException | SQLException e)
		{
			e.printStackTrace();
		}
		
	}
	
	public String login(String email, String pw) {
        String status = "";
        try {
            String name = "", email1 = "", phone = "";
            String id = "";
            Statement st = null;
            ResultSet rs = null;
            st = con.createStatement();
            rs = st.executeQuery("select * from events.user where email='" + email + "' and password='" + pw + "';");
            boolean b = rs.next();
            if (b == true) {
                name = rs.getString("name");
                phone = rs.getString("phone");
                email1 = rs.getString("email");
                id = rs.getString("userID");
                se.setAttribute("username", name);
                se.setAttribute("id", id);
                se.setAttribute("email", email1);
                se.setAttribute("phone", phone);
                status = "success";

            } else {
                status = "failure";
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
	public User getInfo( )
	{
		User u = null;
		
		Statement st = null;
		ResultSet rs = null;
		try {
			st = con.createStatement();
			rs = st.executeQuery("Select * from events.user where name = '"+se.getAttribute("username")+"'");
			
			if(rs.next())
			{
				u= new User();
				u.setName(rs.getString("name"));
				u.setPhone(rs.getString("email"));
				u.setEmail(rs.getString("phone"));			
			}
			else
			{
				u=null;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return u;
	}
	public String update( String name, String phone, String email)
	{
		String status="";
		System.out.println("param enamil: " + email);
		System.out.println("param phone: " + phone);
		
		PreparedStatement pstmt ;		
		try {
			
			pstmt = con.prepareStatement("update events.user set name='"+name +"' , email='"+email+"'  , phone ='"+phone+"' where userID = '"+  se.getAttribute("id")+"' ;");
			//update events.user set name="annie" , email="anniepauline.23@gmail.com"  , phone ="3454543200" where userID = 3 ;
			System.out.println( "id: " + se.getAttribute("id"));
			
			if(pstmt.executeUpdate() > 0)
			{
				System.out.println("data updated");
				se.setAttribute("username", name);
				se.setAttribute("email", email);
				se.setAttribute("phone", phone);
			
				status = "success";
			}
			else
			{
				status="failue";
			}
		} catch (SQLException e ) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	}
	
	public boolean updatePassword(String email,String password) {
		System.out.println("email: "+email);
		System.out.println("password:" + email);
		boolean check = false;
		Statement st = null;
		try {
			st = con.createStatement();
			int a=st.executeUpdate("update events.user set password='"+password+"'where email='"+email+"' ");
			if(a>0) {
				check=true;
			}else {
				System.out.println("Update password failed ");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return check;
	}
	
	
	public String delete(String email )
	{
		System.out.println(email + "model");
		int res1;int res2 ;
		String status="";
		PreparedStatement ps1 = null;PreparedStatement ps2 = null;
		
		try {
			ps1 = con.prepareStatement("delete from events.user where email= '"+email+"' ");
			ps2 = con.prepareStatement("delete from events.bookevent where email= '"+email+"' ");
			res1 = ps1.executeUpdate();
			res2 = ps2.executeUpdate();
			if(res1 >= 0 && res2 >=0)
			{
				status="success";
			}
			else
			{
				status="failure";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
	}
	
	
	public ArrayList<EventProduct> get_eventinfo(String event_category) {
        ArrayList<EventProduct> al = new ArrayList<EventProduct>();
        try {
        	Statement st = null;
			ResultSet rs = null;
            st = con.createStatement();
            String qry = " select * from events.event where event_category='"+event_category+"';";
            System.out.print("update:" + se.getAttribute("id"));
            rs = st.executeQuery(qry);
            System.out.println(rs);
            while (rs.next()) {
            	
            	EventProduct d = new EventProduct();
                d.setP_id(rs.getString("event_id")); 
                // 1..r---db 2.. pass the data or value to Dproduct class set method
                d.setP_image(rs.getString("event_image"));
                d.setP_name(rs.getString("event_name"));
                d.setP_cost(rs.getString("event_cost"));
                d.setP_details(rs.getString("event_details"));
                al.add(d);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return al;

    }

	public int deleteevent(int event_id) {
        int status = 0;
        try {
            Statement st = null;
            st = con.createStatement();
            String qry = "update events.bookevent set status='cancelled' where event_id=' " + event_id + "' ";
            status = st.executeUpdate(qry);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }

	
public EventProduct getEventFormInfo(String event_id) {
        Statement st = null;
        ResultSet rs = null;
        EventProduct s = null;
        try {
            st = con.createStatement();
            rs = st.executeQuery("select * from events.event where event_id= '" + event_id + "'");
            boolean b = rs.next();
            if (b == true) {
                s = new EventProduct();
                s.setP_name(rs.getString("event_name"));
                s.setP_cost(rs.getString("event_cost"));
            } else {
                s = null;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return s;
    }


public String Booknow(HttpServletRequest request) {
        String status = "";
        ResultSet rs = null;
        try {
            Statement st = con.createStatement();
            rs = st.executeQuery("select event_id from events.bookevent where eventdate= '" + request.getParameter("edate") + "'");
            boolean b = rs.next();
            if (b == true) {
                status = "existed";
            } else {
                String qry = "insert into events.bookevent "
                        + "select 0,event_image,event_name,'" 
                        + request.getParameter("pno") + "', '" 
                        + request.getParameter("email") + "','" 
                        + request.getParameter("address") 
                        + "',event_cost,'" 
                        + se.getAttribute("username") 
                        + "'," + se.getAttribute("id")
                        + " ,'pending','" 
                        + request.getParameter("edate") 
                        + "',now() from events.event where event_id=" 
                        + request.getParameter("event_id") + ";";
                int a = st.executeUpdate(qry);
                if (a > 0) {
                    status = "success";
                } else {
                    status = "failure";
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
	

public ArrayList<EventProduct> geteventstatus() {
    ArrayList<EventProduct> al = new ArrayList<EventProduct>();
    Statement st = null;
    ResultSet rs = null;
    try {
        st = con.createStatement();
        String qry = " select *,date_format(date,'%d %b,%Y') as date1,date_format(eventdate,'%d %b,%Y') as date2 from events.bookevent where uid='" + se.getAttribute("id") + " ';";
        rs = st.executeQuery(qry);
        while (rs.next()) {
        	EventProduct d = new EventProduct(); // 1..r---db 2.. pass the data or value to Dproduct class set method
            d.setP_id(rs.getString("event_id"));
            d.setP_image(rs.getString("event_image"));
            d.setP_name(rs.getString("event_name"));
            d.setP_cost(rs.getString("event_cost"));
            d.setPhone(rs.getString("phone"));
            d.setEmail(rs.getString("email"));
            d.setDate(rs.getString("date1"));
            d.setEventdate(rs.getString("date2"));
            d.setStatus(rs.getString("status"));
            al.add(d);
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    return al;
}

public String SignUp(String name, String cpassword, String email, String phone) {
	// TODO Auto-generated method stub
	PreparedStatement pstmt;
	String status="";

	try {
		Statement st = null;
		ResultSet rs = null;
		
		st = con.createStatement();
		rs = st.executeQuery("Select * from events.user where email='"+email+"'  or phone = '"+phone+"'; ");
		
		boolean b = rs.next();
		
		if(b)
		{
			status="exists";
		}
		else
		{
			pstmt = con.prepareStatement("insert into events.user (name,password,email,phone) values(?,?,?,?)");
			pstmt.setString(1, name);
			pstmt.setString(2,cpassword);
			pstmt.setString(3, email);
			pstmt.setString(4, phone);
			
			if(pstmt.executeUpdate()>0)
			{
				status="success";
			}
			else
			{
				status="failure";
			}
		}
	
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	return status;
}

	
}

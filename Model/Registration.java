/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.*;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

public class Registration {

    private Connection con;
    HttpSession se;

    public Registration(HttpSession session) {
        try {

            Class.forName("com.mysql.jdbc.Driver"); // load the drivers
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/food", "root", "root");
            // connection with data base
            se = session;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public String Registration(String name, String phone, String email, String pw) {
        PreparedStatement ps;
        String status = "";
        try {
            Statement st = null;
            ResultSet rs = null;
            st = con.createStatement();
            rs = st.executeQuery("select * from register where phone='" + phone + "' or email='" + email + "';");
            boolean b = rs.next();
            if (b) {
                status = "existed";
            } else {
                ps = con.prepareStatement("insert into register values(0,?,?,?,?,now())");
                ps.setString(1, name);
                ps.setString(2, phone);
                ps.setString(3, email);
                ps.setString(4, pw);
                int a = ps.executeUpdate();
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

    public String login(String email, String pass) {
        String status1 = "", id = "";
        String name = "", emails = "";

        try {
            Statement st = null;
            ResultSet rs = null;
            st = con.createStatement();

            rs = st.executeQuery("select * from register where email='" + email + "' and password='" + pass + "';");
            boolean b = rs.next();
            if (b == true) {
                id = rs.getString("slno");
                name = rs.getString("name");
                emails = rs.getString("email");
                se.setAttribute("uname", name);
                se.setAttribute("email", emails);
                se.setAttribute("id", id);
                status1 = "success";
            } else {
                status1 = "failure";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return status1;
    }

    public ArrayList<Dproduct> get_productinfo(String food) {
        ArrayList<Dproduct> al = new ArrayList<Dproduct>();
        try {
            Statement st = null;
            ResultSet rs = null;
            st = con.createStatement();
            String qry = " select * from products1 where p_category='" + food + " ';";
            rs = st.executeQuery(qry);
            while (rs.next()) {
                Dproduct d = new Dproduct();
                d.setP_id(rs.getString("p_id"));
                d.setP_image(rs.getString("p_image"));
                d.setP_name(rs.getString("p_name"));
                d.setP_cost(rs.getString("p_cost"));
                d.setP_details(rs.getString("p_details"));
                al.add(d);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return al;

    }

    public student getInfo() {
        Statement st = null;
        ResultSet rs = null;
        student s = null;
        try {
            st = con.createStatement();
            rs = st.executeQuery("select * from register where slno= '" + se.getAttribute("id") + "';");
            boolean b = rs.next();
            if (b == true) {
                s = new student();
                s.setName(rs.getString("name"));
                s.setphone(rs.getString("phone"));
                s.setemail(rs.getString("email"));
            } else {
                s = null;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return s;
    }

    public String update(String name, String pno, String email) {
        String status = "";
        Statement st = null;
        ResultSet rs = null;
        try {
            st = con.createStatement();
            st.executeUpdate("update register set name='" + name + "',phone='" + pno + "',email='" + email + "' where slno= '" + se.getAttribute("id") + "'; ");
            se.setAttribute("uname", name);
            status = "success";
        } catch (Exception e) {
            status = "failure";
            e.printStackTrace();
        }

        return status;
    }

    public String addtocart(String p_id) {

        String status = "";
        try {
            Statement st = con.createStatement();
            String qry = ("insert into cart select 0,p_name,p_image,p_cost, '" + se.getAttribute("uname") + "'," + se.getAttribute("id") + " ,0,'pending' from products1 where p_id=" + p_id + ";");
            int a = st.executeUpdate(qry);
            if (a > 0) {
                status = "success";
            } else {
                status = "failure";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    public ArrayList<Cart> getcartinfo() {
        ArrayList<Cart> al = new ArrayList<Cart>();
        String status = "";
        Statement st = null;
        ResultSet rs = null;
        try {

            st = con.createStatement();
            String qry = ("select * from cart where uid=" + se.getAttribute("id") + " and status='pending';");
            rs = st.executeQuery(qry);
            while (rs.next()) {
                Cart c = new Cart();
                c.setC_id(rs.getString("c_id"));
                c.setC_image(rs.getString("c_image"));
                c.setC_name(rs.getString("c_name"));
                c.setC_cost(rs.getString("c_cost"));
                al.add(c);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return al;
    }

    public ArrayList<student> getUserinfo(String id) {
        Statement st = null;
        ResultSet rs = null;
        ArrayList<student> al = new ArrayList<student>();
        try {
            st = con.createStatement();
            String qry = ("select * from register where slno = '" + id + "';");
            rs = st.executeQuery(qry);
            while (rs.next()) {
                student p = new student();
                p.setId(rs.getString("slno"));
                p.setName(rs.getString("name"));
                p.setemail(rs.getString("email"));
                p.setphone(rs.getString("phone"));
                p.setdate(rs.getString("date"));
                al.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return al;
    }

    public int deletecart(int c_id) {

        int status = 0;

        try {
            Statement st = null;

            st = con.createStatement();
            String qry = ("update cart set status='deleted' where c_id=' " + c_id + "'; ");
            status = st.executeUpdate(qry);

        } catch (Exception e) {

        }
        return status;
    }

    public ArrayList<Order> getorderinfo() {
        Statement st = null;
        ResultSet rs = null;
        ArrayList<Order> al = new ArrayList<Order>();
        try {
            st = con.createStatement();
            String qry = "select * from orders where uid='" + se.getAttribute("id") + "';";
            rs = st.executeQuery(qry);
            while (rs.next()) {
                Order p = new Order();
                p.setoid(rs.getInt("order_id"));
//                p.setc_cost(rs.getString("c_cost"));
//                p.setc_id(rs.getString("c_id"));
                p.setstatus(rs.getString("status"));
                al.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return al;
    }

    public ArrayList<Order> getorderinfocart(int oid) {
        Statement st = null;
        ResultSet rs = null;
        ArrayList<Order> al = new ArrayList<Order>();
        try {
            st = con.createStatement();
            String qry = ("select *  from cart where uid='" + se.getAttribute("id") + "' and order_id = '" + oid + "';");
            rs = st.executeQuery(qry);
            while (rs.next()) {
                Order p = new Order();
                p.setoid(rs.getInt("order_id"));
                p.setc_cost(rs.getString("c_cost"));
                p.setc_image(rs.getString("c_image"));
                p.setc_name(rs.getString("c_name"));
                al.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return al;
    }

    public String orderdetails(String order_address, String order_city, String order_state, String tcost) {
        String status = "", c_id = "";
        int order_id = 0;
        try {
            Statement st = null;
            ResultSet rs = null;
            PreparedStatement ps;
            st = (Statement) con.createStatement();
            ps = (PreparedStatement) con.prepareStatement("insert into orders select 0,?,?,?,group_concat(c_id),'" + tcost + "','" + se.getAttribute("uname") + "','ordered',now()," + se.getAttribute("id") + " from cart where uid= " + se.getAttribute("id") + " and status='pending';");
            ps.setString(1, order_address);
            ps.setString(2, order_city);
            ps.setString(3, order_state);
            System.out.println(ps);
            int a = ps.executeUpdate();
            if (a > 0) {
                status = "success";
            } else {
                status = "failure";
            }
            String qry1 = "select order_id,c_id from orders where uid=" + se.getAttribute("id") + " and status='ordered' order by order_id desc limit 1;";
            rs = st.executeQuery(qry1);
            while (rs.next()) {
                order_id = rs.getInt("order_id");
                c_id = rs.getString("c_id");
            }
            String qry = "update cart set status='ordered',order_id='" + order_id + "' where c_id in (" + c_id + ") and uid=" + se.getAttribute("id") + " and status='ordered';";
            int b = st.executeUpdate(qry);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }

    public int deleteorder(int oid) {
        int status = 0;
        try {
            Statement st = null;
            st = (Statement) con.createStatement();
            String qry = ("update orders set status='Canceled' where order_id='" + oid + "';");
            status = st.executeUpdate(qry);
            String qry1 = ("update cart set status='Canceled' where order_id='" + oid + "';");
            status = st.executeUpdate(qry1);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }

    public ArrayList<student> getuserdata() {
//(Kindly check with User class under Model package: User.java in your code )
        ArrayList<student> al = new ArrayList<student>();
        try {
            Statement st = null;
            ResultSet rs = null;
            st = con.createStatement();
            String qry = "select * from register;";
//           System.out.println(qry);
            rs = st.executeQuery(qry);
            while (rs.next()) {
                student p;
                p = new student();
                p.setid(rs.getString("id"));
                p.setname(rs.getString("name"));
                p.setphone(rs.getString("phone"));
                p.setemail(rs.getString("email"));
                p.setpw(rs.getString("pw"));
                al.add(p);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return al;
    }

    public String delete_id(int id) {
        int count = 0;
        Statement st = null;
        ResultSet rs = null;
        String status = "";
        try {
            st = con.createStatement();
            count = st.executeUpdate("delete from register where id='" + id + "';");
            if (count > 0) {
                status = "success";
            } else {
                status = "failure";
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    public String addproducts(String image, String name, String cost, String detail, String catagory) {
        PreparedStatement ps;
        String status = "";
        try {
            Statement st = null;
            ResultSet rs = null;
            st = con.createStatement();

            ps = (PreparedStatement) con.prepareStatement("insert into products1 values(0,?,?,?,?,?)");
            ps.setString(1, image);
            ps.setString(2, name);
            ps.setString(3, cost);
            ps.setString(4, detail);
            ps.setString(5, catagory);

            int a = ps.executeUpdate();
            if (a > 0) {
                status = "success";
            } else {
                status = "failure";
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }

    public ArrayList<adminOrder> getorderdata() {
        ArrayList<adminOrder> al = new ArrayList<adminOrder>();
        try {
            Statement st = null;
            ResultSet rs = null;
            st = con.createStatement();
            String qry = "select * from orders;";
//           System.out.println(qry);
            rs = st.executeQuery(qry);
            while (rs.next()) {
                adminOrder p = new adminOrder();
                p.setuname(rs.getString("uname"));
                p.setc_id(rs.getString("c_id"));
                p.setc_cost(rs.getString("c_cost"));
                p.setorder_address(rs.getString("order_address"));
                p.setorder_city(rs.getString("order_city"));
                p.setorder_state(rs.getString("order_state"));
                p.setstatus(rs.getString("status"));
                al.add(p);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return al;
    }

    public ArrayList<Dproduct> getd_productinfo() {
//(kindly check it Dproduct.java in your project  under model package )
        ArrayList<Dproduct> al = new ArrayList<Dproduct>();
        try {
            Statement st = null;
            ResultSet rs = null;
            st = con.createStatement();
            String qry = ("select * from products1 ");
            rs = st.executeQuery(qry);
            while (rs.next()) {
                Dproduct p = new Dproduct();
                p.setP_id(rs.getString("p_id"));
                p.setP_image(rs.getString("p_image"));
                p.setP_name(rs.getString("p_name"));
                p.setP_cost(rs.getString("p_cost"));
                p.setP_details(rs.getString("p_details"));
                al.add(p);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return al;
    }

    public int deleteproduct(int c_id) {
        int status = 0;
        try {
            Statement st = null;
            st = (Statement) con.createStatement();
            String qry = "delete from products1 where p_id='" + c_id + "'";
            status = st.executeUpdate(qry);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }

}

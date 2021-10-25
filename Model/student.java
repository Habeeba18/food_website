/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author yasee
 */
public class student {

    String id;
    String name;
    String phonenumber;
    String email;
    String date;
    String pw;

    public String getPw() {
        return pw;
    }

    public void setPw(String pw) {
        this.pw = pw;
    }

    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getphone() {
        return phonenumber;
    }

    public String getemail() {
        return email;
    }

    public String getdate() {
        return date;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setphone(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    public void setemail(String email) {
        this.email = email;
    }

    public void setdate(String date) {
        this.date = date;
    }

    void setid(String string) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    void setname(String string) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    void setpw(String string) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}

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
public class Order {

    int order_id;
    String c_id;
    String status;
    String c_image;
    String c_name;
    String c_cost;

    public String getc_image() {
        return c_image;
    }

    public String getstatus() {
        return status;
    }

    public String getc_cost() {
        return c_cost;
    }

    public int getoid() {
        return order_id;
    }
        public String getc_id() {
        return c_id;
    }
         public String getc_name() {
        return c_name;
    }

    public void setoid(int oid) {
        this.order_id = oid;
    }
        public void setc_id(String c_id) {
        this.c_id = c_id;
    }
         public void setstatus(String status) {
        this.status = status;
    }

    public void setc_image(String c_image) {
        this.c_image = c_image;
    }

    public void setc_name(String c_name) {
        this.c_name = c_name;
    }

    public void setc_cost(String c_cost) {
        this.c_cost = c_cost;
    }
}


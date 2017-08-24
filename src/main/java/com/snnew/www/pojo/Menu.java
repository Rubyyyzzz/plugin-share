package com.snnew.www.pojo;

import javax.persistence.*;

/**
 * Created by wowill on 2017/8/11.
 */
@Entity
@Table(name = "menu")
public class Menu {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String first_menu_id;
    private String first_menu_name;
    private String second_menu_id;
    private String second_menu_name;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirst_menu_id() {
        return first_menu_id;
    }

    public void setFirst_menu_id(String first_menu_id) {
        this.first_menu_id = first_menu_id;
    }

    public String getFirst_menu_name() {
        return first_menu_name;
    }

    public void setFirst_menu_name(String first_menu_name) {
        this.first_menu_name = first_menu_name;
    }

    public String getSecond_menu_id() {
        return second_menu_id;
    }

    public void setSecond_menu_id(String second_menu_id) {
        this.second_menu_id = second_menu_id;
    }

    public String getSecond_menu_name() {
        return second_menu_name;
    }

    public void setSecond_menu_name(String second_menu_name) {
        this.second_menu_name = second_menu_name;
    }
}

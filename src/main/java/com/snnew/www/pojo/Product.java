package com.snnew.www.pojo;

import javax.persistence.*;

/**
 * Created by wowill on 2017/8/11.
 */
@Entity
@Table(name = "product")
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String title;
    private String image_small;
    private String image_big;
    private String description;
    private String belong_id;
    private String belong_name;
    private int browse_num;
    private int download_num;
    private String show_url;
    private String download_url;
    private String upload_time;
    private String upload_ip;
    private String belong_root_id;
    private String seo_title;
    private String seo_keywords;
    private String seo_description;

    public String getSeo_title() {
        return seo_title;
    }

    public void setSeo_title(String seo_title) {
        this.seo_title = seo_title;
    }

    public String getSeo_keywords() {
        return seo_keywords;
    }

    public void setSeo_keywords(String seo_keywords) {
        this.seo_keywords = seo_keywords;
    }

    public String getSeo_description() {
        return seo_description;
    }

    public void setSeo_description(String seo_description) {
        this.seo_description = seo_description;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", image_small='" + image_small + '\'' +
                ", image_big='" + image_big + '\'' +
                ", description='" + description + '\'' +
                ", belong_id='" + belong_id + '\'' +
                ", belong_name='" + belong_name + '\'' +
                ", browse_num=" + browse_num +
                ", download_num=" + download_num +
                ", show_url='" + show_url + '\'' +
                ", download_url='" + download_url + '\'' +
                ", upload_time='" + upload_time + '\'' +
                ", upload_ip='" + upload_ip + '\'' +
                ", belong_root_id='" + belong_root_id + '\'' +
                '}';
    }

    public String getBelong_root_id() {
        return belong_root_id;
    }

    public void setBelong_root_id(String belong_root_id) {
        this.belong_root_id = belong_root_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImage_small() {
        return image_small;
    }

    public void setImage_small(String image_small) {
        this.image_small = image_small;
    }

    public String getImage_big() {
        return image_big;
    }

    public void setImage_big(String image_big) {
        this.image_big = image_big;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getBelong_id() {
        return belong_id;
    }

    public void setBelong_id(String belong_id) {
        this.belong_id = belong_id;
    }

    public String getBelong_name() {
        return belong_name;
    }

    public void setBelong_name(String belong_name) {
        this.belong_name = belong_name;
    }

    public int getBrowse_num() {
        return browse_num;
    }

    public void setBrowse_num(int browse_num) {
        this.browse_num = browse_num;
    }

    public int getDownload_num() {
        return download_num;
    }

    public void setDownload_num(int download_num) {
        this.download_num = download_num;
    }

    public String getShow_url() {
        return show_url;
    }

    public void setShow_url(String show_url) {
        this.show_url = show_url;
    }

    public String getDownload_url() {
        return download_url;
    }

    public void setDownload_url(String download_url) {
        this.download_url = download_url;
    }

    public String getUpload_time() {
        return upload_time;
    }

    public void setUpload_time(String upload_time) {
        this.upload_time = upload_time;
    }

    public String getUpload_ip() {
        return upload_ip;
    }

    public void setUpload_ip(String upload_ip) {
        this.upload_ip = upload_ip;
    }
}

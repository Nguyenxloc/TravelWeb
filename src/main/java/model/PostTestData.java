package model;

import java.sql.Date;

public class Post {
     private String id;
     private String title;
     private String author;
     private Date  date;
     private String des;
     private String imgUrl;

    public Post() {
    }

    public Post(String id, String title, String author, Date date, String des, String imgUrl) {
        this.id = id;
        this.title = title;
        this.author = author;
        this.date = date;
        this.des = des;
        this.imgUrl = imgUrl;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    @Override
    public String toString() {
        return "post{" +
                "id='" + id + '\'' +
                ", title='" + title + '\'' +
                ", author='" + author + '\'' +
                ", date=" + date +
                ", des='" + des + '\'' +
                ", imgUrl='" + imgUrl + '\'' +
                '}';
    }
}

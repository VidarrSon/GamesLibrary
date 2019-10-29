package com.vidarrson.gameslibrary.model;

import javax.persistence.*;

@Entity
@Table(name = "games")
public class Game {
    @Id
    @Column(name = "game_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "game_title")
    private String title;

    @Column(name = "game_genre")
    private String genre;

    @Column(name = "game_developer")
    private String developer;

    @Column(name = "game_price")
    private int price;

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

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getDeveloper() {
        return developer;
    }

    public void setDeveloper(String developer) {
        this.developer = developer;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    // for logging
    @Override
    public String toString() {
        return "Game ID: " + id +
                "\nTitle: " + title +
                "\nGenre: " + genre +
                "\nDeveloper: " + developer +
                "\nPrice: " + price / 100 + "." + price % 100;
    }
}

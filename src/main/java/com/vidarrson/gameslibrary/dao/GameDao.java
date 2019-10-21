package com.vidarrson.gameslibrary.dao;

import com.vidarrson.gameslibrary.model.Game;

import java.util.List;

public interface GameDao {
    public void addGame(Game game);
    public void updateGame(Game game);
    public void removeGame(int id);
    public Game getGameById(int id);
    public List<Game> listGames();
}

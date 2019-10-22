package com.vidarrson.gameslibrary.service;

import com.vidarrson.gameslibrary.model.Game;

import java.util.List;

public interface GameService {
    public void addGame(Game game);
    public void updateGame(Game game);
    public void removeGame(int id);
    public Game getGameById(int id);
    public List<Game> listGames();
}

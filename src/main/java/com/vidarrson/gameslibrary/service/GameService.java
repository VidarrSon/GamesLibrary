package com.vidarrson.gameslibrary.service;

import com.vidarrson.gameslibrary.model.Game;

import java.util.Collection;
import java.util.List;

public interface GameService {
    void addGame(Game game);            // C
    List<Game> listGames();             // R
    void updateGame(Game game);         // U
    void removeGame(int id);            // D
    Game getGameById(int id);
    Collection<Game> getGames(String search);
}

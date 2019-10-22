package com.vidarrson.gameslibrary.service;

import com.vidarrson.gameslibrary.dao.GameDao;
import com.vidarrson.gameslibrary.model.Game;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class GameServiceImpl implements GameService{
    private GameDao gameDao;

    public void setGameDao(GameDao gameDao) {
        this.gameDao = gameDao;
    }

    @Override
    @Transactional
    public void addGame(Game game) {
        this.gameDao.addGame(game);
    }

    @Override
    @Transactional
    public void updateGame(Game game) {
        this.gameDao.updateGame(game);
    }

    @Override
    @Transactional
    public void removeGame(int id) {
        this.gameDao.removeGame(id);
    }

    @Override
    @Transactional
    public Game getGameById(int id) {
        return this.gameDao.getGameById(id);
    }

    @Override
    @Transactional
    public List<Game> listGames() {
        return this.gameDao.listGames();
    }
}

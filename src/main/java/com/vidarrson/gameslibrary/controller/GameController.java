package com.vidarrson.gameslibrary.controller;

import com.vidarrson.gameslibrary.service.GameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;

@Controller
public class GameController {
    private GameService gameService;

    @Autowired(required = true)
    @Qualifier(value = "gameService")
    public void setGameService(GameService gameService) {
        this.gameService = gameService;
    }

}

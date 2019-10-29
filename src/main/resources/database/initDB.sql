create table games_library.games (
    game_id int not null auto_increment,
    game_title varchar(45) not null,
    game_genre varchar(45) null,
    game_developer varchar(45) null,
    game_price int not null,
    primary key (game_id))
CC := g++
CFLAGS := -Wall -std=c++17 -O2 -v
ALLEGRO_LIBRARIES := allegro-5 allegro_image-5 allegro_font-5 allegro_ttf-5 allegro_dialog-5 allegro_primitives-5 allegro_audio-5 allegro_acodec-5
ALLEGRO_FLAGS := $(shell pkg-config --cflags --libs $(ALLEGRO_LIBRARIES)) -lallegro -lallegro_main

OUT:= BBW
SOURCE = Boxinggloves.cpp Capture_map.cpp Character.cpp Circle.cpp Cross.cpp Deathmatch_map.cpp Gamewindow.cpp global.cpp Item_intro.cpp Item.cpp Lightning.cpp Magicdrink.cpp Main.cpp Maxdrug.cpp Menu.cpp Object.cpp Obstacle.cpp Player_tie.cpp Player.cpp Player1_win.cpp Player2_win.cpp Scence.cpp Select_Character.cpp Shield.cpp Waterbomb.cpp
OBJ = Boxinggloves.o Capture_map.o Character.o Circle.o Cross.o Deathmatch_map.o Gamewindow.o global.o Item_intro.o Item.o Lightning.o Magicdrink.o Main.o Maxdrug.o Menu.o Object.o Obstacle.o Player_tie.o Player.o Player1_win.o Player2_win.o Scence.o Select_Character.o Shield.o Waterbomb.o
		
all: 
	$(CC) -c -g $(CFLAGS) $(SOURCE) $(ALLEGRO_FLAGS)
	$(CC) $(CFLAGS) -o $(OUT) $(OBJ) $(ALLEGRO_FLAGS)
	rm $(OBJ)

.PHONY:clean
clean:
	rm $(OUT)
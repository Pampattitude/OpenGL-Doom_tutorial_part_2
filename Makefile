CFLAGS = -D_REENTRANT
INCLUDES = -I/usr/include/SDL2
LDFLAGS = -lglut -lGLU -lGL -lm -lSDL2

all :: part1 part2

part2 ::
	gcc $(CFLAGS) $(INCLUDES) -o Doom_Part_2 Doom_Part_2.c $(LDFLAGS)

part1 ::
	gcc $(CFLAGS) $(INCLUDES) -o Doom_Part_1 Doom_Part_1.c $(LDFLAGS)

grid2d ::
	gcc $(CFLAGS) $(INCLUDES) -o Grid2D Grid2D.c $(LDFLAGS)

clean ::
	rm -f *.o

fclean :: clean
	rm -f Doom_Part_2 Doom_Part_1

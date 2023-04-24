// ____________________________
// ██▀▀█▀▀██▀▀▀▀▀▀▀█▀▀█        │   ▄▄▄                ▄▄      
// ██  ▀  █▄  ▀██▄ ▀ ▄█ ▄▀▀ █  │  ▀█▄  ▄▀██ ▄█▄█ ██▀▄ ██  ▄███
// █  █ █  ▀▀  ▄█  █  █ ▀▄█ █▄ │  ▄▄█▀ ▀▄██ ██ █ ██▀  ▀█▄ ▀█▄▄
// ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀────────┘                 ▀▀
//  Program template
//─────────────────────────────────────────────────────────────────────────────

//=============================================================================
// INCLUDES
//=============================================================================
#include "msxgl.h"
#include "mandoroids.h"
#include "random.c"

//=============================================================================
// DEFINES
//=============================================================================

#define TRUE 1
#define FALSE 0

#define SetTileAtXY(x,y,tile)				VDP_FillVRAM(tile, g_ScreenLayoutLow + x + y * 32, 0, 1);
#define SetPatternSM1(source,index,number)	VDP_WriteVRAM_16K(source, g_ScreenPatternLow + (index*8), number*8);
#define GetTileAtXY(x,y)					VDP_Peek_16K(g_ScreenLayoutLow + x + y *32);

//=============================================================================
// READ-ONLY DATA
//=============================================================================

// Fonts data
#include "font/font_mgl_sample6.h"


//=============================================================================
// MAIN LOOP
//=============================================================================

//-----------------------------------------------------------------------------
/// Program entry point

char px ;
char py ;
signed char vy = 0;

char input_rate = 8;

char update_rate = 12;

char scroll_rate = 128;

char asteroid_chance = 10;

char game_started = FALSE;
char game_ended = FALSE;

char pattern_buffer [744];

char new_column_buffer [3];

char can_shoot = TRUE;

int can_shoot_timer = 0;

int difficulty_timer = 0;

int speed_up_timer = 0;

int asteroids_shot = 0;

char joystick_used = FALSE;

char asteroid_destroyed = FALSE;

char button_down = FALSE;

char can_reset = FALSE;

char shot_pos[2] = {
	//X,Y
	0,0
};

char shot_pos_tile[2] = {
	//X,Y
	0,0
};

char shot_active = FALSE;

void GetRandomColumn();
void CreateColumn(char x);
void ClearLeftmostColumn();
void Shoot();
void UpdateShots();
void UpdateCollision();
void ResetGame();
void FinalScreen();

void ScrollBackgroundToTheLeft() {

	VDP_ReadVRAM_16K(g_ScreenLayoutLow + 1,pattern_buffer,768);
	VDP_WriteVRAM_16K(pattern_buffer,g_ScreenLayoutLow,768);

	GetRandomColumn();
	CreateColumn(31);
}

void GetRandomColumn() {

	char chnc;

	new_column_buffer[0] = 0;
	new_column_buffer[1] = 0;
	new_column_buffer[2] = 0;

	chnc = Math_GetRandomRange8(0,101);
	if (chnc<=asteroid_chance) {
		new_column_buffer[0] = asteroid_arrangements[Math_GetRandomRange8(0,8)];
	}
	chnc = Math_GetRandomRange8(0,101);
	if (chnc<=asteroid_chance) {
		new_column_buffer[1] = asteroid_arrangements[Math_GetRandomRange8(0,8)];
	}
	chnc = Math_GetRandomRange8(0,101);
	if (chnc<=asteroid_chance) {
		new_column_buffer[2] = asteroid_arrangements[Math_GetRandomRange8(0,8)];
	}
}

void CreateColumn(char x) {

	SetTileAtXY(x,0,new_column_buffer[0] & 1 << 1);
	SetTileAtXY(x,1,new_column_buffer[0]>>1 & 1 << 1);
	SetTileAtXY(x,2,new_column_buffer[0]>>2 & 1 << 1);
	SetTileAtXY(x,3,new_column_buffer[0]>>3 & 1 << 1);
	SetTileAtXY(x,4,new_column_buffer[0]>>4 & 1 << 1);
	SetTileAtXY(x,5,new_column_buffer[0]>>5 & 1 << 1);
	SetTileAtXY(x,6,new_column_buffer[0]>>6 & 1 << 1);
	SetTileAtXY(x,7,new_column_buffer[0]>>7 & 1 << 1);

	SetTileAtXY(x,8,new_column_buffer[1] & 1 << 1);
	SetTileAtXY(x,9,new_column_buffer[1]>>1 & 1 << 1);
	SetTileAtXY(x,10,new_column_buffer[1]>>2 & 1 << 1);
	SetTileAtXY(x,11,new_column_buffer[1]>>3 & 1 << 1);
	SetTileAtXY(x,12,new_column_buffer[1]>>4 & 1 << 1);
	SetTileAtXY(x,13,new_column_buffer[1]>>5 & 1 << 1);
	SetTileAtXY(x,14,new_column_buffer[1]>>6 & 1 << 1);
	SetTileAtXY(x,15,new_column_buffer[1]>>7 & 1 << 1);

	SetTileAtXY(x,16,new_column_buffer[2] & 1 << 1);
	SetTileAtXY(x,17,new_column_buffer[2]>>1 & 1 << 1);
	SetTileAtXY(x,18,new_column_buffer[2]>>2 & 1 << 1);
	SetTileAtXY(x,19,new_column_buffer[2]>>3 & 1 << 1);
	SetTileAtXY(x,20,new_column_buffer[2]>>4 & 1 << 1);
	SetTileAtXY(x,21,new_column_buffer[2]>>5 & 1 << 1);
	SetTileAtXY(x,22,new_column_buffer[2]>>6 & 1 << 1);
	SetTileAtXY(x,23,new_column_buffer[2]>>7 & 1 << 1);

}

void Shoot() {

		if (shot_active==FALSE) {
			shot_active = TRUE;

			shot_pos[0] = px-4;
			shot_pos[1] = py-4;

			shot_pos_tile[0] = (shot_pos[0]+32)/8;
			shot_pos_tile[1] = (shot_pos[1]+16)/8;

			VDP_SetSpritePosition(1,px-4,py-4);
			can_shoot = FALSE;

		}

}

void UpdateShots() {

		if (shot_active==TRUE) {
			shot_pos[0]+=2;
			VDP_SetSpritePosition(1,shot_pos[0],shot_pos[1]);
			if (shot_pos[0]>=250) {
				shot_active = FALSE;
				VDP_HideSprite(1);
			}

			char tlx = ((shot_pos[0]+32)/8)-2;
			char tly = (shot_pos[1]+16)/8;

			char tl = GetTileAtXY(tlx,tly);
			if (tl==2) {
				SetTileAtXY(tlx,tly,0);
				shot_active = FALSE;
				VDP_HideSprite(1);

				asteroids_shot++;
				asteroid_destroyed = TRUE;
			}
		}

}

void UpdateCollision() {

	char cx = (px + 16)/8;
	char cy = (py + 16)/8;
		char cy2 = cy+1;
		char cy3 = cy-1;

	char tl = GetTileAtXY(cx,cy);
	char tl2 = GetTileAtXY(cx,cy2);
	char tl3 = GetTileAtXY(cx,cy3);

	if (tl==2 || tl2==2 || tl3==2) {
		FinalScreen();
	}

}

void ResetGame() {

	asteroids_shot = 0;

	difficulty_timer = 0;

	speed_up_timer = 0;

	asteroid_chance = 10;

	scroll_rate = 128;

	can_reset = FALSE;

	VDP_EnableDisplay(FALSE);

	VDP_ClearVRAM();

	VDP_SetColor(COLOR_WHITE & COLOR_BLACK);

	Print_SetTextFont(g_Font_MGL_Sample6, 1);

	Print_SetPosition(11, 2);
	Print_DrawText("MANDOROIDS");

	Print_SetPosition(6,5);
	Print_DrawText("Atire nos asteroides");

	Print_SetPosition(3,8);
	Print_DrawText("SETAS movem, ESPACO atira");
	Print_SetPosition(7,9);
	Print_DrawText("OU use o joystick");


	Print_DrawTextAt(14,22,"2023");
	Print_DrawTextAt(10,23,"IGOR MORENO");

	//#################### Tiles

	SetPatternSM1(asteroid,2,1);
	Print_SetColor(0xF, 0x1);

	///################### Sprites
	VDP_SetSpriteFlag(VDP_SPRITE_SIZE_16 | VDP_SPRITE_SCALE_2);

	//Player
	px = 112;
	py = 112;

	game_started = FALSE;
	game_ended = FALSE;

	VDP_LoadSpritePattern(jetpack_f0,0,8);
	VDP_SetSpriteSM1(0,px,py,0,15);

	//Shot
	VDP_LoadSpritePattern(shot_pattern,12,4);
	VDP_SetSpriteSM1(1,0,208,12,11);
	VDP_EnableDisplay(TRUE);
}

void FinalScreen() {

	game_ended = TRUE;

	VDP_HideSprite(0);

	VDP_EnableDisplay(FALSE);

	VDP_ClearVRAM();

	VDP_SetColor(COLOR_WHITE & COLOR_BLACK);

	Print_SetColor(0xF, 0x1);

	Print_SetTextFont(g_Font_MGL_Sample6, 1);

	Print_SetPosition(2, 9);
	Print_DrawText("ASTEROIDES DESTRUIDOS:");

	Print_DrawIntAt(25,9,asteroids_shot);

	Print_DrawTextAt(2,12,"ESPACO OU TIRO PARA JOGAR");

	VDP_EnableDisplay(TRUE);
}

void main()
{
	

	Math_SetRandomSeed8(0x20);

	VDP_SetMode(VDP_MODE_SCREEN1);
	VDP_EnableVBlank(TRUE);

	ResetGame();

	while(!Keyboard_IsKeyPressed(KEY_ESC))
	{

		Joystick_Update();

		char dir = Joystick_GetDirection(JOY_PORT_1);
		char jb = Joystick_IsButtonPressed(JOY_PORT_1,JOY_INPUT_TRIGGER_A);
			button_down = jb;

			if (button_down>0) {
				joystick_used = TRUE;
			}

		char jl = dir & JOY_INPUT_DIR_LEFT;
		char jr = dir & JOY_INPUT_DIR_RIGHT;
		char ju = dir & JOY_INPUT_DIR_UP;

		count++;
		can_shoot_timer++;
		difficulty_timer++;
		speed_up_timer++;

		hundred = count%100;

		if (count%2==0 && (vy<0 || !game_started)) {
			VDP_SetSpritePattern(0,4);
		} else {
			VDP_SetSpritePattern(0,0);
		}

		if (game_started==FALSE) {
				if (Keyboard_IsKeyPressed(KEY_UP) || jb || ju) {
					game_started = TRUE;
					VDP_EnableDisplay(FALSE);
					VDP_FillVRAM_16K(0,g_ScreenLayoutLow,768);
					VDP_EnableDisplay(TRUE);
				}
				goto FRAME_END;
			}

		if (game_ended==TRUE) {
			if (!button_down || !Keyboard_IsKeyPressed(KEY_SPACE)) {
				can_reset = TRUE;
			}
			if ((Keyboard_IsKeyPressed(KEY_SPACE) || jb) && can_reset) {
					ResetGame();
				}
				goto FRAME_END;
		}

		
		if (count%input_rate==0){

			if ((Keyboard_IsKeyPressed(KEY_LEFT) || jl) && px > 8) {
				px--;
			}
			if ((Keyboard_IsKeyPressed(KEY_RIGHT) || jr) && px < 200) {
				px++;
			}
			if ((Keyboard_IsKeyPressed(KEY_UP) || ju)) {
				vy = vy-- > -3 ? vy : -3;
			}
		}

		if (can_shoot==TRUE && (Keyboard_IsKeyPressed(KEY_SPACE) || jb)) {
			Shoot();
		}	

		if (count%update_rate==0) {
			//Gravity
			vy = vy++ > 2 ? 2 : vy;
			py += vy;
			if (vy<0 && py>230) {
				py = 0;
			}
		}

		if (count%scroll_rate==0) {
			UpdateCollision();
			if (!game_ended) {
				ScrollBackgroundToTheLeft();
			}
			UpdateCollision();
		}

		if (can_shoot_timer>=350 || asteroid_destroyed) {
			if (!button_down && joystick_used) {
				can_shoot = TRUE;
				can_shoot_timer = 0;
				asteroid_destroyed = FALSE;
				joystick_used = FALSE;
			} else if (!Keyboard_IsKeyPressed(KEY_SPACE) && !joystick_used) {
				can_shoot = TRUE;
				can_shoot_timer = 0;
				asteroid_destroyed = FALSE;
			} else {
				can_shoot_timer = 349;
			}
		}

		if (difficulty_timer>=1400) {
			difficulty_timer = 0;
			asteroid_chance += 1;
		}

		if (speed_up_timer>=2044) {
			speed_up_timer = 0;
			scroll_rate -= 4;
		}

		if (py>192) {
			FinalScreen();
		}

		UpdateShots();

		FRAME_END:
			VDP_SetSpritePosition(0,px,py);

	}

	Bios_Exit(0);
}
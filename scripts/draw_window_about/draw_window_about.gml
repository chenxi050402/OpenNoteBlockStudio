function draw_window_about() {
	// draw_window_stats()
	var x1, y1, a, n;
	windowanim = 1
	if (theme = 3) draw_set_alpha(windowalpha)
	x1 = floor(rw / 2 - 150)
	y1 = floor(rh / 2 - 200) + windowoffset
	draw_window(x1, y1, x1 + 300, y1 + 400)
	draw_theme_font(font_main)
	if (language != 1) draw_text_dynamic(x1 + 8, y1 + 8, "About")
	else draw_text_dynamic(x1 + 8, y1 + 8, "关于")
	draw_sprite_ext(spr_logo, 0, x1 + 86, y1 + 50, 0.55, 0.55, 0, c_white, draw_get_alpha())
	draw_set_halign(fa_center)
	draw_theme_font(font_info_med_bold)
	draw_text_dynamic(x1 + 150, y1 + 200, "Open Note Block Studio")
	draw_theme_font(font_main)
	if (language != 1) {
	if (RUN_FROM_IDE != 1){
		draw_text(x1 + 150, y1 + 217, "Version Local Release" + "\n\nThis program is a continuation of\n Minecraft Note Block Studio, \ncreated by David Norgren. \n\nThis product is not affiliated with\nMojang Studios, Microsoft Studios\nor the game Minecraft.")
	} else {
		draw_text(x1 + 150, y1 + 217, "Version " + version + " - Released " + version_date + "\n\nThis program is a continuation of\n Minecraft Note Block Studio, \ncreated by David Norgren. \n\nThis product is not affiliated with\nMojang Studios, Microsoft Studios\nor the game Minecraft.")
	}
	} else {
	if (RUN_FROM_IDE != 1){
		draw_text_dynamic(x1 + 150, y1 + 217, "本地版本" + "\n\n本程序是 Minecraft Note Block Studio 的延续版本\n原作者 David Norgren\n\n本产品与 Mojang Studios、\nMicrosoft Studios 以及\n游戏 Minecraft 无任何关联。")
	} else {
		draw_text_dynamic(x1 + 150, y1 + 217, "版本" + version + " - 发布于" + version_date + "\n\n本程序是 Minecraft Note Block Studio 的延续版本\n原作者 David Norgren\n\n本产品与 Mojang Studios、\nMicrosoft Studios 以及\n游戏 Minecraft 无任何关联。")
	}
	}
	draw_set_halign(fa_left)
	if (draw_button2(x1 + 120, y1 + 370, 72, "OK", false) && (windowopen = 1 || theme != 3)) {
		windowclose = 1
	}
	window_set_cursor(cr_default)
}

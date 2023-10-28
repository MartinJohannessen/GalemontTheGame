// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@arg0 "up",
///@arg1 "enter"
///@arg2 "space_h"
///@arg3 "e"
///@arg4 

function input(){

if argument0 = "right"
	{
	if keyboard_check_pressed(vk_right) or
	keyboard_check_pressed(ord("D")) return 1;
	}
	
if argument0 = "left"
	{
	if keyboard_check_pressed(vk_left) or
	keyboard_check_pressed(ord("A")) return 1;
	}
	
if argument0 = "up"
	{
	if keyboard_check_pressed(vk_up) or
	keyboard_check_pressed(ord("W")) return 1;
	}
	
if argument0 = "down"
	{
	if keyboard_check_pressed(vk_down) or
	keyboard_check_pressed(ord("S")) return 1;
	}

if argument0 = "enter"
	{
	if keyboard_check_pressed(vk_enter) or
	keyboard_check_pressed(vk_space) or
	keyboard_check_pressed(ord("E")) return 1;
	}

if argument0 = "back"
	{
	if keyboard_check_pressed(vk_backspace) or
	keyboard_check_pressed(ord("Q")) or 
	keyboard_check_pressed(vk_escape) return 1;
	}
	
if argument0 = "e"
	{
	if keyboard_check_pressed(ord("E")) return 1;
	}
	
if argument0 = "space"
	{
	if keyboard_check_pressed(vk_space) return 1;
	}
	
if argument0 = "space_h"
	{
	if keyboard_check(vk_space) return 1;
	}

#region //Numbers 0-9
if argument0 = "1"
	{
	if keyboard_check_pressed(ord("1")) return 1;
	}
if argument0 = "2"
	{
	if keyboard_check_pressed(ord("2")) return 1;
	}
if argument0 = "3"
	{
	if keyboard_check_pressed(ord("3")) return 1;
	}
#endregion
	
return 0;

}
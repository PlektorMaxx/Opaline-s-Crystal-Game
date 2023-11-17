extends Node

#note: before the variable is set as any of the choices from the menu it is -1 so a 
#	menu selection is not accidentally prematurely displayed
var item_id = -1 
var isFlipped = false

var r
var g
var b

var tr
var tg
var tb

var one = false
var two = false
var three = false

signal menuSelection
signal done
signal shelfPushed
signal shelfShown
signal keep
signal placed

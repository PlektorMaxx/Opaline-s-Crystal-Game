extends Node

var item_id = -1 
#note: before the variable is set as any of the choices from the menu it is -1 so a 
#	menu selection is not accidentally prematurely displayed
var isFlipped = false

signal menuSelection

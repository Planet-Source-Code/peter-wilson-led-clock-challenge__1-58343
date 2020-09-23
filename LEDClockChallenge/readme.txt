' ================================================================================
' LED Clock
' Version: 1.0
'
' by Peter [I am a programming God] Wilson  (not THE God... just A god)
' Copyright © 2005 - Peter Wilson - All rights reserved.
' http://dev.midar.com/
'
' Inspired by 'simple clock' by Roger Gilchrist
' http://www.planetsourcecode.com/vb/scripts/showcode.asp?txtCodeId=58337&lngWId=1
'
' ================================================================================


The Challenge
=============
Build an 7 Segment LED Clock using minimal VB code.

Roger did it in 22 lines of code (by my reckoning). By the same rules I judged Roger's by, my code comes in at only 7 lines of code. I thrown down th challenge for anyone to improve on this.


Noteable features.
==================
* Multiplex the display, by changing a single segment per refresh.

* Save me writing looping code. I just increment a counter, and loop it using the MOD (modulus operator).

* The line segments (a thru g) match the truth table.
Example:
	The Letter 0 (zero) looks like this:
		abcdefg
		1111110
This is a design-time optomization that requires no programming, just good planning.

* Only change a single line segment per refresh. This is what real electronic circuits
do to simplify the electrical wiring - same with this code.


Planet Source Code
==================
Here is a list of my other submissions. Most of them are well rated.
	*  A 2D Asteroids Game
	*  A 2D DotProduct Demonstration
	*  A 2D game - Froggies, a game of leap frog.
	*  A 2D Rotation Demo using SIN() and COS()
	*  A 2D Rotation Demo v2.0
	*  A 2D Rotation Lesson - Fly a UFO
	*  A 3D Lesson v2, Very Simple
	*  A 3D Lesson v3.1, Moderate
	*  A 3D Lesson v4, Advanced
	*  3D Studio v6.0 beta
	*  A collision avoidance system for games using DotProduct.
	*  A Matrix Multiplication Lesson using the game Asteroids
	*  A Simple Solar System Simulator, v1.0
	*  A Vacuum Fluorescent Display Simulator v1.0
	*  Asteroid Collisions (using the DotProduct)
	*  Convert Fonts to Vector Graphics using GetGlyphOutline
	*  RGB Colour Wheel
	*  TechniColor Mouse Trails
	*  TechniColor Mouse Trails v2
	*  Plus a few extras...


Enjoy!

Peter Wilson
http://dev.midar.com/

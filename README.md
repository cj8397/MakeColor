# MakeColor
A simple hex color library for iOS developers.

By Matt Catellier and  Cheng Jiang


<b> Make Color </b> is a lightweight and easy to use SWIFT library created to programatically change assign color using hex values. Coming from a web background, the RGB color system of SWIFT and XCODE can be a little confusing, so we made 7 simple functions to help you out. There are also a number of built in color schemes taht we have set up for you.


# Features

makeColor(hex) - enter in any old hex value

makeVerticalGradient(topColor, bottomColor) - takes 2 parameters, the first being the top color, and the second being the bottom color

makeHorizontalGradient(leftColor, rightColor) - takes 2 parameters, the first being the left color, and the second being the bottom color

makeGradient(color1, color2, startPoint, endPoint) - takes 4 parameters, first 2 being colors and the second 2 being the anchor points for your gradients. <b>startPoint</b> is where color1 will start, <b>endPoint</b> is where color 2 will start from.  The anchor points are defined as points which were based on grid system. 

     i.e. CGPointMake(0, 0) - top left corner,   CGPointMake(1, 1) - bottom right corner

makeOpac(color, alpha) - will take your color, and add alpha channel to it

makeLighter(color, percent) - will take your color and make it lighter by indicated percent

makeDarker(color, percent) - will take your color and make it darker by indicated percent

NOTE:
- can only make some colors so dark, and the percent is passed in as a whole number.  
i.e.  makeLighter(FFFFFF, 20)


Colors

red	- FF3B30 
orange - FF9500
yellow - FFCC00
green -	4cd964
aqua - 34aadc
blue - 071ff
purple - 5856d6
lightgray -	F7f7f7
black -	1f1f21
gray - Bdbec2

redGradient - FF5E3A	FF2A68
orangeGradient - Ff9500	Ff5e3a
yellowGradient - Ffdb4c	Ffcd02
greenGradient - 87fc70	0bd318
lightBlueGradient - 52edc7	5ac8fb
darkBlueGradient - 1ad6fd	1d62f0
pinkGradient - Ef4db6	C643fc
purpleGradient - C644FC	5856D6
darkGrayGradient - 4a4a4a	2b2b2b
grayGradient - Dbddde	898c90
lightGrayGradient - F7f7f7	D7d7d7


    









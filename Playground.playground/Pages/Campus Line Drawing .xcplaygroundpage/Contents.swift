//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 600
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 28 to 36 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that will draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Create a pen that will draw upon the canvas
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
// Move the origin to the middle of the canvas
canvas.translate(to: Point(x: canvas.width / 2, y:canvas.width / 2 ))

// Draw a grid
canvas.drawAxes(withScale: true, by: 20, color:Color.black )

// go to the right position
p.goto(dx: -240, dy: 0)
    // draw front house wall
p.turn(degrees: 90)
p.addLine(distance: 140)
p.turn(degrees: -90)
p.addLine(distance: 480)
p.turn(degrees: 90)
p.addLine(distance: -140)
p.turn(degrees: -90)
p.addLine(distance: -480)


//end up top left corner
p.goto(dx: 0, dy: 140)


    //Where am I?
print (p.currentPosition())

//draw the roof of the building
p.drawTo(dx: -40, dy: 100)
p.addLine(distance: 480)
p.drawTo(dx: 40, dy: -100)
p.turn(degrees: 180)
p.addLine(distance: 480)
p.goto(dx: -40, dy: 100)
p.turn(degrees: 90)
p.addLine(distance: 240)

// go to the right position to draw window
p.goto(dx: 80, dy: 160)
p.turn(degrees: 90)
//teach the computer to draw triangle windows

func drawtriangleWindow() {
    // initial triangle window
    p.addLine(distance: 60)
    p.turn(degrees: 120)
    p.addLine(distance: 60)
    p.turn(degrees: 120)
    p.addLine(distance: 60)
    p.turn(degrees: 120)
    
    // depth line on left
    p.drawTo(dx: 10, dy: 40)
    p.goto(dx: -10, dy: -40)
    p.turn(degrees: 90)
    p.goto(dx: 60, dy: 0)
    p.turn(degrees: 90)
    p.drawTo(dx: -10, dy: 40)
    p.goto(dx: 10, dy: -40)
    p.turn(degrees: 180)
}

//  drawing all 4 windows
for i in 1 ... 4 {
    drawtriangleWindow()
    p.goto(dx: 40, dy: 0)
}
// going to left corner front wall
p.goto(dx: -400, dy: -40)

//draw square windows
func squareWindow () {
    p.addLine(distance: 20)
    p.turn(degrees: -90)
    p.addLine(distance: 20)
    p.turn(degrees: -90)
    p.addLine(distance: 20)
    p.turn(degrees: -90)
    p.addLine(distance: 20)
    p.turn(degrees: -90)
}

for i in 1 ... 3 {
    squareWindow()
    p.goto(dx: 20, dy: 0)
}
// position for next row of window
p.goto(dx: -60, dy: -20)

for i in 1 ... 3 {
    squareWindow()
    p.goto(dx: 20, dy: 0)
}
// position for 2nd window
p.goto(dx: 40, dy: 20)

for i in 1 ... 3 {
    squareWindow()
    p.goto(dx: 20, dy: 0)
}
// position for next row of window
p.goto(dx: -60, dy: -20)

for i in 1 ... 3 {
    squareWindow()
    p.goto(dx: 20, dy: 0)
}
// position for 3rd window
p.goto(dx: 40, dy: 20)

for i in 1 ... 3 {
    squareWindow()
    p.goto(dx: 20, dy: 0)
}
// position for next row of window
p.goto(dx: -60, dy: -20)

for i in 1 ... 3 {
    squareWindow()
    p.goto(dx: 20, dy: 0)
}
// position for 3rd window
p.goto(dx: 40, dy: 20)

for i in 1 ... 3 {
    squareWindow()
    p.goto(dx: 20, dy: 0)
}
// position for next row of window
p.goto(dx: -60, dy: -20)

for i in 1 ... 3 {
    squareWindow()
    p.goto(dx: 20, dy: 0)
}
// position for curve
p.goto(dx: -400, dy: -40)
// first curve
p.turn(degrees: -34)
p.addArc(radius: 220, angle: 67)
// go to origin
p.goto(dx: -2.8430266868494, dy: -57.88074101411635)
// position for 2nd curve
p.goto(dx: -240, dy: 20)
// second curve
p.turn(degrees: -67)
p.addArc(radius: 220, angle: 67)
p.goto(dx: -2.84302624688776, dy: -17.880741014116495)
p.turn(degrees: 5367.0)
// position for line front wall
p.goto(dx: 0, dy: 60)
// line front wall
p.addLine(distance: 240)
// position 2nd line front wall
p.goto(dx: -240, dy: -40)
// 2nd line front wall
p.addLine(distance: 240)
// back to origin
p.goto(dx: -240, dy: -10)
//  go-to lower part of the building
p.goto(dx: -240, dy: 0)
p.turn(degrees: 90)
// lower part of the building
p.addLine(distance: -100)
p.turn(degrees: -90)
p.addLine(distance: 480)
p.turn(degrees: 90)
p.addLine(distance: 100)
/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */

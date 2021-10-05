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
//move the origin
canvas.translate(to: Point(x: canvas.width / 2 , y: canvas.height / 6 ))

//draw the scale
canvas.drawAxes(withScale: true, by: 20, color: .black)

// Black
p.penColor = .black

// Thicker lines
p.lineWidth = 3

// Orange section
//left triangle
p.drawTo(dx: 0, dy: 40)
p.drawTo(dx: -20, dy: -20)

p.goToOrigin()

// right triangle
p.drawTo(dx: 0, dy: 40)
p.drawTo(dx: 20, dy: -20)

p.penDown()
p.goToOrigin()


// Green section
//left triangle
p.goto(dx: 20, dy: 20)
p.drawTo(dx: 20, dy: 0)
p.drawTo(dx: 0, dy: 60)
p.drawTo(dx: -20, dy: -60)

p.goToOrigin()

//right triangle
p.goto(dx: 40, dy: 20)
p.drawTo(dx: 0, dy: 100)

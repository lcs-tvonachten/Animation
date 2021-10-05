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
canvas.translate(to: Point(x: canvas.width / 2 , y: canvas.height / 2 ))

//draw the scale
canvas.drawAxes(withScale: true, by: 20, color: .black)

//change the fill color to white
canvas.fillColor = Color(hue: 0, saturation: 0, brightness: 100, alpha: 50)

//turn on borders
canvas.drawShapesWithBorders = true

//draw rigth ear
canvas.drawEllipse(at: Point(x: 30, y: 45), width: 25, height: 25)

//draw left ear
canvas.drawEllipse(at: Point(x: -30, y: 45), width: 25, height: 25)

//draw a circle
canvas.drawEllipse(at: Point(x: 0, y: 0), width: 100, height: 100)

// draw rigth eye
canvas.drawEllipse(at: Point(x: 13, y: 20), width: 20, height: 25)

canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: 13, y: 15), width: 16, height: 16)

//draw left eye
canvas.fillColor = .white
canvas.drawEllipse(at: Point(x: -13, y: 20), width: 20, height: 25)

canvas.fillColor = .black
canvas.drawEllipse(at: Point(x: -13, y: 15), width: 16, height: 16)



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

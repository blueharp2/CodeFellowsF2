class Stick {
    var length  = 10
    var color = "brown"
    var saying = "roll on the ground"
    var name = "Brown Stick"
    
    func speak() {
        print("Hello I am a \(name) and I \(saying)")
    }
    func colorChange(newColor : String){
        color = newColor
    }
    
    func breakStick(startingLength: Int) -> Int{
        return startingLength / 2
    }
}

var stickInstance = Stick()
stickInstance.breakStick(stickInstance.length)

let stick = Stick()
stick.speak()


class GlowStick : Stick {
    var glowPower = "Bright"
  
  func speak2() {
  print("This glowstick's glow is currently registering as \(glowPower)")
}
  
    init (nameOfStick: String, sayingOfStick : String){
        super.init()
        name = nameOfStick
        saying = sayingOfStick
    }
}
let glowStick = GlowStick(nameOfStick: "GlowStick", sayingOfStick: "glow blue")
glowStick.speak()
glowStick.colorChange("Blue")
glowStick.breakStick(50)
glowStick.length = 50
glowStick.speak2()


class PopsicleStick : Stick {
  var strength = 20
  
  func speak3(){
    print("This popsicle stick has a strength of \(strength).")
  }
  
  init (nameOfStick: String, sayingOfStick : String){
    super.init()
    name = nameOfStick
    saying = sayingOfStick
  }
}
let popsicleStick = PopsicleStick(nameOfStick: "Popsicle Stick", sayingOfStick: "love the cold!")
popsicleStick.speak()
popsicleStick.colorChange("Tan")
popsicleStick.length = 20
popsicleStick.breakStick(20)
popsicleStick.speak3()


class CinnamonStick : Stick {
  var garnishExample = "Pumpkin Pie"
  
  func speak4(){
    print("Cinnamon sticks can be used as a garnish for many dishes.  For example \(garnishExample).")
  }
  
  init (nameOfStick: String, sayingOfStick : String){
    super.init()
    name = nameOfStick
    saying = sayingOfStick
  }
}
let cinnamonStick = CinnamonStick(nameOfStick: "Cinnamon Stick", sayingOfStick: " am spicy!")
cinnamonStick.speak()
cinnamonStick.colorChange("cinnamon")
cinnamonStick.length = 10
cinnamonStick.breakStick(10)
cinnamonStick.speak4()


class CheeseStick : Stick {
  var serveWith = "Marinara Sauce"
  
  func speak5(){
    print("Cheese Sticks are usually served with \(serveWith).")
  }
  
  init (nameOfStick: String, sayingOfStick : String){
    super.init()
    name = nameOfStick
    saying = sayingOfStick
  }
}
let cheeseStick = CheeseStick(nameOfStick: "Cheese Stick", sayingOfStick: " am cheesey!")
cheeseStick.speak()
cheeseStick.colorChange("cheddar orange")
cheeseStick.length = 6
cheeseStick.breakStick(6)
cheeseStick.speak5()


class LipStick : Stick {
  var wowPower = 100
  
  func speak6(){
    print("I have a Wow Power factor of \(wowPower)!")
  }
  
  init (nameOfStick: String, sayingOfStick : String){
    super.init()
    name = nameOfStick
    saying = sayingOfStick
  }
}
let lipStick = LipStick(nameOfStick: "Lip Stick", sayingOfStick: "red and racy!")
lipStick.speak()
lipStick.colorChange("race red")
lipStick.length = 2
lipStick.breakStick(2)
lipStick.speak6()


class ChapStick : LipStick {
  var flavor = "Mint"
  
  func speak7(){
    print("My favorite flavor of Chapstick is \(flavor).")
  }
  
}
let chapstick = ChapStick (nameOfStick: "ChapStick", sayingOfStick: "clear and glossy!")
chapstick.speak()
chapstick.colorChange("clear")
chapstick.breakStick(2)
chapstick.speak6()
chapstick.speak7()


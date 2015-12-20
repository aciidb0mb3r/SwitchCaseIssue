enum SampleEnum {
  case One
  case Two
}

class SampleClass {

  let theEnum: SampleEnum
  let foo: Bool
  let bar: Bool

  init(theEnum: SampleEnum) {
    self.theEnum = theEnum
    switch theEnum {
      case .One:
        self.foo = true
        self.bar = false
      case .Two:
        self.foo = false
        self.bar = true
    }
  }

  func printValues() {
    let expectedFoo: Bool
    let expectedBar: Bool
    switch theEnum {
      case .One:
        expectedFoo = true
        expectedBar = false
      case .Two:
        expectedFoo = false
        expectedBar = true
    }
    print("foo is \(foo) expected \(expectedFoo)")
    print("bar is \(bar) expected \(expectedBar)")
  }
}

let instanceOne = SampleClass(theEnum: .One)
instanceOne.printValues()
print("")
let instanceTwo = SampleClass(theEnum: .Two)
instanceTwo.printValues()

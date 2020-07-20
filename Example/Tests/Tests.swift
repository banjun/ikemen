import Quick
import Nimble
import Ikemen
import Dispatch

class C {
    var p: Int = 0
}

struct S {
    var p: Int = 0
}

func dispatchMainAsync(_ block: @escaping () -> Void) {
    DispatchQueue.main.async(execute: block)
}

class IkemenSpec: QuickSpec {
    override func spec() {
        describe("reference type") {
            it("modify property") {
                let c = C() ※ {$0.p = 42}
                expect(c.p) == 42
            }
        }

        describe("value type") {
            it("modify property") {
                let s = S() ※ {$0.p = 42}
                expect(s.p) == 42
            }
        }

        describe("reference types nested in value type") {
            it("modify properties") {
                let cs: [C] = [C(), C(), C()] ※ {$0[0].p = 42}
                expect(cs.map {$0.p}) == [42, 0, 0]
            }
        }

        describe("value types nested in value type") {
            it("modify properties") {
                let ss: [S] = [S(), S(), S()] ※ {$0[0].p = 42}
                expect(ss.map {$0.p}) == [42, 0, 0]
            }
        }

        describe("reference type in escaping closure") {
            it("will modify after") {
                let c = C() ※ { c in
                    let c = c // Escaping closures can only capture inout parameters explicitly by value
                    dispatchMainAsync {
                        c.p = 42
                    }
                }
                expect(c.p) == 0
                expect(c.p).toEventually(be(42))
            }
        }

        describe("value type in escaping closure") {
            xit("emit compile error; completely nonsense") {
//                let s = S() ※ { s in
//                    // Escaping closures can only capture inout parameters explicitly by value
//                    dispatchMainAsync {
//                        s.p = 42
//                    }
//                }
//                expect(s.p).toEventually(be(42))
            }
        }
    }
}

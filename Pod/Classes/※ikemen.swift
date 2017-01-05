infix operator ※: IkemenPrecedence
precedencegroup IkemenPrecedence {
    associativity: left
    higherThan: AssignmentPrecedence
}

// for reference types
public func ※<T: AnyObject>(object: T, modifier: (T) -> ()) -> T {
    modifier(object)
    return object
}

// for value types (NOTE: modifier need to be inout even unless actually call mutatings)
public func ※<T>(value: T, modifier: (inout T) -> ()) -> T {
    var v = value
    modifier(&v)
    return v
}

// TODO: remove after https://bugs.swift.org/browse/SR-3520 is fixed
@available(iOS, deprecated: 8, message: "can cause runtime crash. use type annotation. see SR-3520")
@available(OSX, deprecated: 10.11, message: "can cause runtime crash. use type annotation. see SR-3520")
public func ※<T: UnsafeSR3520>(value: T, modifier: (T) -> ()) -> T {
    fatalError()
}
public protocol UnsafeSR3520 {}
extension NSArray: UnsafeSR3520 {}
extension NSString: UnsafeSR3520 {}
extension Array: UnsafeSR3520 {}
extension String: UnsafeSR3520 {}

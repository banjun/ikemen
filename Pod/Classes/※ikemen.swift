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

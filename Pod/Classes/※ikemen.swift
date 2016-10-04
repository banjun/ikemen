

infix operator ※: IkemenPrecedence
precedencegroup IkemenPrecedence {
    associativity: left
    higherThan: AssignmentPrecedence
}

public func ※<T>(object: T, modifier: (T) -> ()) -> T {
    modifier(object)
    return object
}

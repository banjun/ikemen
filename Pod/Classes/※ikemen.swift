infix operator ※: IkemenPrecedence
precedencegroup IkemenPrecedence {
    associativity: left
    higherThan: AssignmentPrecedence
}

@inlinable public func ※<T>(value: T, modifier: (inout T) -> ()) -> T {
    var v = value
    modifier(&v)
    return v
}

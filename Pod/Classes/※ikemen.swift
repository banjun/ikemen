

infix operator ※ {
    associativity left
    precedence 95
}

public func ※<T>(object: T, @noescape modifier: T -> ()) -> T {
    modifier(object)
    return object
}

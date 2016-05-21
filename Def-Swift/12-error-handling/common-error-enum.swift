enum TicketError: ErrorType {
    case WrongDate, Shortage
    case Code(Int)
    case UnKnown(String)
}


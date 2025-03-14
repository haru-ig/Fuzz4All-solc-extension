pragma solidity ^0.8.0;
contract SemanticsEquivalentChanges3 {
    uint8 internal constant ONE = 1;
    uint8 internal constant ZERO = 0;
}
contract SemanticsEquivalentChanges7 {
    enum Direction { LEFT, RIGHT }
    uint256 internal constant ONE = 1;
    uint256 constant TWO = 2;
}
contract SemanticsEquivalentChanges23 {
    uint8 internal constant ONE = 1;
    uint8 constant TWO = 2;
}
contract SemanticsEquivalentChanges24 {
    uint8 internal constant ONE = 1;
    uint8 constant TWO = 2;
}
contract SemanticsEquivalentChanges19 {
    uint8 internal constant ONE = 1;
    uint8 constant TWO = 2;
    uint8 constant FOUR = 4;
}
contract SemanticsEquivalenceChanges21 {
    uint8 internal constant TWO = 2;
    uint8 internal constant ONE = 1;
    enum Status { ELIMINATED, OCCUPIED, LEAVED }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentArrayAssignment {
    uint8 [] public field;
    constructor() public {
    field = new uint8[](3);
    field[0] = 3;
    field[1] = 0;
    }
    function ArrayAssignment() public {
        field[1] = 10;
    }
}

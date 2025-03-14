pragma solidity ^0.8.0;
contract SemanticallyEquivalentArrayAssignment {
    uint8 [5] public field;
    constructor() public {
        field = new uint8[](5);
        field[0] = 1;
        field[1] = 2;
        field[2] = 3;
        field[3] = 4;
        field[4] = 5;
    }
}

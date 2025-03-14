pragma solidity ^0.8.0;
contract SemanticallyEquivalentArrayAssignment {
    uint8 [] public field;
    uint8 [] public extraField;
    constructor() external {
        field = new uint8[](5);
        field[0] = 1;
        field[1] = 2;
        field[2] = 3;
        field[3] = 4;
        extraField = new uint8[](6);
        extraField[0] = 5;
        extraField[1] = 6;
        extraField[2] = 7;
        extraField[3] = 8;
        extraField[4] = 9;
    }
}

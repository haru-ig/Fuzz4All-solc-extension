pragma solidity ^0.8.0;
contract SemanticallyEquivalentDynamicallySizedListAssignment {
    address [] public field;
    constructor() public {
        field = new address[](5);
        field[0] = 0x1000000000000000000000000000000000005;
        field[1] = 0x10000000000000000000000000000000000005;
        field[2] = 0x10000000000000000000000000000000000005;
        field[3] = 0x100000000000000000000000000000000005;
    }
}

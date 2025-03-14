pragma solidity ^0.8.0;
contract SemanticallyEquivalentBinaryarrayWithoutAssignment2 {
    uint8[] public fieldBinary;
    uint8[] public local;
    uint counter  = 0;
    constructor() public {
        local[0] = 0;
        local[1] = 4;
        local[counter++] = 3;
        local[counter++] = 1;
    }
    function BinaryArrayWithoutAssignment2() public returns(uint8) {
        return local[1];
    }
}

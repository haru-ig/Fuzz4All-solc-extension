pragma solidity ^0.8.0;
contract SemanticallyEquivalentArrayAssignmentNoMutation {
    uint8[] public fieldArr;
    constructor() public {
    fieldArr = new uint8[](3);
    fieldArr[0] = 1;
    fieldArr[1] = 0;
    fieldArr[2] = 2;
    }
    function ArrayAssignmentNoMutation() public returns(uint8) {
        fieldArr[1] += 1;
        return fieldArr[1];
    }
}

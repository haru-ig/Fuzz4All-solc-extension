pragma solidity ^0.8.0;
contract SemanticallyEquivalentCalldataAndNonDynamicNonFixedarrayWithoutAssignment {

    uint256[] public fieldCalldata1;
    uint256[] public fieldCalldata2;
    uint256[] public fieldCalldata3;

    constructor() {
        fieldCalldata1[0] = 0;
        fieldCalldata1[1] = 0;
        fieldCalldata2[0] = 0;
        fieldCalldata2[1] = 0;
        fieldCalldata3[0] = 0;
        fieldCalldata3[1] = 0;
        fieldCalldata3[2] = 0;
    }
    function CalldataDynamicList() public returns(uint) {
        fieldCalldata1[0] = 1;
        fieldCalldata1[0] = 2;
        fieldCalldata3[2] = 3;
        fieldCalldata3[0] = 4;
        fieldCalldata3[1] = 5;
        for(uint i = 10; i < 25; i++) {
            fieldCalldata2[i % 3] = i;
        }
        return fieldCalldata1[0];
    }
}

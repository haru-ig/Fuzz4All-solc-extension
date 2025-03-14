pragma solidity ^0.8.0;
contract SemanticallyEquivalentCalldataArrayWithAssignment {
    uint256[] public fieldCalldata1;
    uint256[] public fieldCalldata2;
    constructor() public {
        fieldCalldata1.push(0);
        fieldCalldata1.push(1);
    }
    function CalldataArrayWithAssignment() public returns(uint) {
        fieldCalldata2.push(0);
        fieldCalldata2.push(1);
        fieldCalldata1.push(2);
        fieldCalldata1.push(3);
        return fieldCalldata2[0];
    }
}

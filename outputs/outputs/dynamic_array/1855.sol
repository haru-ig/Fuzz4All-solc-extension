pragma solidity ^0.8.0;
contract NonSemanticallyEquivalentCalldata {
    uint[] public fieldCalldata;
    constructor() {
        fieldCalldata.push(0);
        fieldCalldata.push(1);
        fieldCalldata.push(2);
    }
    function CalldataArrayWithAssignment() public returns(uint) {
        fieldCalldata.push(3);
        return fieldCalldata[0];
    }
}

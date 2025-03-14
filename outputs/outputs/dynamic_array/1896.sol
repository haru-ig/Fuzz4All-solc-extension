pragma solidity ^0.8.0;
contract NewSemanticallyEquivalentBinaryarrayWithAssignment {
    bool public flag;
    uint8[4] public fieldBinary;
    uint8[] externalFieldBinary;
    uint8[] internalFieldBinary;
    constructor(){
        flag = true;
    }
    modifier modifiedConstructor() {
       if (flag){
        flag = false;
       }
       _;
    }
    modifier newAssignmentFunction() {
        externalFieldBinary.push(1);
        _;
    }
    function NewSemanticallyEquivalentBinaryarrayWithAssignment(uint8 _a1) public newAssignmentFunction modifer {
        fieldBinary[2];
    }
    function BinaryArrayWithAssignment() public returns (uint8) {
        return fieldBinary[2];
    }
}

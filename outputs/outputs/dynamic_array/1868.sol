pragma solidity ^0.8.0;
contract SemanticallyEquivalentDynamicarrayWithoutAssignment {
    uint[] public fieldDynamic;
    constructor() public {
        fieldDynamic.push(0);
        fieldDynamic.push(1);
    }
    function DynamicArrayWithoutAssignment() public returns(uint) {
        uint _dummy = fieldDynamic[0];
        fieldDynamic.push(2);
        fieldDynamic.push(3);
        return _dummy;
    }
}

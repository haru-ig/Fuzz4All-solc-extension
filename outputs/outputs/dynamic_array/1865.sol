pragma solidity ^0.8.0;
contract SemanticallyEquivalentDynamicarrayWithAssignment {
    function InvalidDynamicArrayConstruction() public returns (uint[]) {
        uint[] memory fieldDynamic1;
        fieldDynamic1.push(1);
        fieldDynamic1.push(2);
        return fieldDynamic1;
    }
}

pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedNestedDynamicallySizedNestedArrayAssignment_5{
    uint256[] internal parentArray;
    uint256[] internal nestedArray;
    uint256 internal staticChildArrayIndex = 0;
    constructor() public {
    }
    function child() internal returns(uint256) {
        return child(staticChildArray[staticChildArrayIndex]);
    }
    function child(uint256 val) internal returns(uint256) {
        return val;
    }
}

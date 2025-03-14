pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity28_dynamicArraysOfNestedDataStructureAndSize {
    uint a;
    function callTest05(uint a) internal view returns (uint) {
        return a;
    }
    function callTest10() public {
        a = 4;
        a[0][0] = 27;
    }
    function callTest06() public returns (uint) {
        return callTest05(a);

    }
}

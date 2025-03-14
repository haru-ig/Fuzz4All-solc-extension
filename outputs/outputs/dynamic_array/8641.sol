pragma solidity ^0.8.0;
contract NotSemanticallyEquivalentSolidity76_dynamicArraysOfIdenticalType {
    uint256[5] public a;
    int256[5] public b;
    function callTest01() public view returns (uint256[5]) {
        return a;
    }
    function callTest02() public view returns (int256[5]) {
        return b;
    }
    function mutatorTest01() public returns (uint256[5]) {
        return a;
    }
    function mutatorTest02() public returns (int256[5]) {
        return b;
    }
}

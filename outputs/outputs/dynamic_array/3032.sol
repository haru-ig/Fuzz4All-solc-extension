pragma solidity ^0.8.0;
contract SymbolicEquality_MappingDynamicAraryModulation {
    mapping (uint => uint) public x;
    mapping (uint => uint) public y;
    mapping (uint => uint) public z;
    function m() public view returns (mapping(uint=>uint) memory) {
        return x;
    }
}

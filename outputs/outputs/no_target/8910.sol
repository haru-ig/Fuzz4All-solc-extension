pragma solidity ^0.8.0;
contract EquivalentAbiMutations_v3 {
    uint public _Value269 = 1;
    function test (uint256, uint256) public returns (uint4, uint4) {
        return (_Value269, _Value269);
    }
    function test_1 (uint256 _value256) public returns (uint4, uint4) {
        return (_value256, _Value269);
    }
}

pragma solidity ^0.8.0;
contract TestMutated20Public {
    uint256 public x;
    function TestMutated20Public(uint256 a) {
        x = a;
    }
    function add(uint a) public view returns (uint b) {
        return 5 + a / 2;
    }
    function add2(uint a) public view returns (uint b) {
        return 5 + a / 2 - x;
    }
}

pragma solidity ^0.8.0;
contract A {
    uint constant public _uint256 = 16**256;
    function mutated(uint x) public pure returns (uint) {
        return _uint256 ^ uint(x) ^ uint(x) ^ uint(x);
    }
}

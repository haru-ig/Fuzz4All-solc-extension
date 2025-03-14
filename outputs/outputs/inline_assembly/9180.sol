pragma solidity ^0.8.0;
contract A {
    uint256 constant public _uint32 = 16**60;
    uint x = _uint32;
    function test2() public returns (uint) {
        uint y = x ^ x;

        return y;
    }
}

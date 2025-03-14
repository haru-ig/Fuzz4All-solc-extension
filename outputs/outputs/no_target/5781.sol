pragma solidity ^0.8.0;
contract Baz {
    uint a = 2**8;
    function g(uint256 x) internal returns (uint256) {
        a += x;
        a -= x;
        return a;
    }
}

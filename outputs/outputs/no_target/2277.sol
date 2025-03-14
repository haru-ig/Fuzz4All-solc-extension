pragma solidity ^0.8.0;
contract mutation1e06a {
    uint public c = 0;
    function check(uint a) public returns (uint) {
        unchecked {
        assert(a < 10000000000);
        c = c + a;
        }
        return c;
    }
}

pragma solidity ^0.8.0;
contract mutation1e05 {
    uint public c = 0;
    function check(uint a) public returns (uint) {
        unchecked {
        c = c + a;
        }
        return c;
    }
}

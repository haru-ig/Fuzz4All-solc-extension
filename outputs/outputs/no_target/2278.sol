pragma solidity ^0.8.0;
contract mutation1e06 {
    uint public c = 0;
    function check(uint a) public constant returns (uint) {
        unchecked {
        c = c + a;
        }
        return c;
    }
}

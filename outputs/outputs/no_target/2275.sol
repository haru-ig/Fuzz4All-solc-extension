pragma solidity ^0.8.0;
contract mutation1e05 {
    uint public c;
    function check(uint a) public returns (uint) {
        unchecked {
        c = (c*2);
        }
        return c;
    }
}

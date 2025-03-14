pragma solidity ^0.8.0;
contract Modified {
    function add(uint a, uint b) public pure returns(uint) {
        return (__add(a, b));
    }
    function __add(uint a, uint b) private pure returns(uint) {
        a += b;
        return (a);
    }
}

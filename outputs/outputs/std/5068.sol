pragma solidity ^0.8.0;
contract New {
    function add(uint a, uint b) public pure returns(uint) {
        a = a.add(b);
        return (a);
    }
}

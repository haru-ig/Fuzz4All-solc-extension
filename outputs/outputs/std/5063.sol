pragma solidity ^0.8.0;
contract Original {
    function add(uint a, uint b) public pure returns(uint) {
        a += b;
        return (a);
    }
}

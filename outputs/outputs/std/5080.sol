pragma solidity ^0.8.0;
contract Mutated {
    function add(uint a, uint b) public pure returns (!uint) {
        b *= a;
        return (b + a);
    }
}

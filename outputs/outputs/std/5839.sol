pragma solidity ^0.8.0;
contract Mutated17{
    function mutated17(uint[2] memory a) public pure returns (uint) {
        uint b;
        (a[0], b) = (2, a[1]);
        return b;
    }
}

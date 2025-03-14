pragma solidity ^0.8.0;
contract Mutated15{
    function mutated15(uint[4] memory a) public pure returns (uint) {
        uint b = a[0];
        a[0] = 15;
        return a[0];
    }
}

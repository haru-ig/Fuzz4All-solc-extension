pragma solidity ^0.8.0;
contract Mutated16{
    function mutated16(uint[2] memory a) public pure returns (uint) {
        uint b;
        a[0] = 32;
        b = a[0];
        return a[0];
    }
}

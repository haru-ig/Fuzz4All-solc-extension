pragma solidity ^0.8.0;
contract Mutated16{
    function mutated16(uint[2] memory a) public pure returns (uint) {
        uint[2] memory b = [2, 2];
        a[0] = 33;
        b[0] = a[0];
        return b[0];
    }
}

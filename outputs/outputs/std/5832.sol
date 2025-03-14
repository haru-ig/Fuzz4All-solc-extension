pragma solidity ^0.8.0;
contract Mutated16{
    function mutated16(uint[2] memory a) public pure returns (uint) {
        uint[] memory b = new uint[](2);
        a[0] = 16;
        b[0] = 16;
        a[1] = 16;
        b[1] = 16;
        return a[1];
    }
}

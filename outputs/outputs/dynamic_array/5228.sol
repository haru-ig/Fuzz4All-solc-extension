pragma solidity ^0.8.0;
contract Test38 {
    function f(uint[] memory, uint[][2] memory, uint[][2][2] memory) public pure returns (uint[][2][2]) {
        uint[][2][2] memory memory b = new uint[2][2];
        b[1][0] = 1;
        b[1][1] = 2;
        return b;
    }
}

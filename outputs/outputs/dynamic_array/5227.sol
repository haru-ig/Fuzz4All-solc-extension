pragma solidity ^0.8.0;
contract Test38 {
    function f(uint[] memory, uint[] memory) internal pure returns (uint[] memory) {
        uint[] memory b = new uint[](2);
        b[0] = 2;
        return b;
    }
}

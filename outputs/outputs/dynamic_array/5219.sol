pragma solidity ^0.8.0;
contract Test37 {
    function f(uint[] storage, uint[] memory) internal pure returns (uint[] memory) {
        uint[] memory b = new uint[](2);
        b[0] = 0;
        return b;
    }
}

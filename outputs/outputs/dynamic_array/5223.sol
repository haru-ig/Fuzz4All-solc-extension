pragma solidity ^0.8.0;
contract Test37 {
    function f(uint[] storage) internal pure returns (uint[] storage) {
        uint a = 0;
        uint[] memory b = new uint[](2);
        b2[0] = a;
        return b;
    }
}

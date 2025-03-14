pragma solidity ^0.8.0;
contract ContractA {
    int256 private i;
    uint256 public immutable x;
    function setX(uint256 _x) {
        i = int256(_x - 5);
        x = uint160(i);
        uint256 b1 = i + (uint256(-x) * uint256(10));
        uint160 b2 = 0;
        uint160 b3 = i * 10;
        uint160 b4 = i >> 12;
    }
}

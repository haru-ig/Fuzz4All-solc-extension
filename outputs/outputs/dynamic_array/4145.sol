pragma solidity ^0.8.0;
contract C {
    function f() public {
        uint[] memory x = new uint[](2);
        x[1] = uint(uint32x0(1) + 1);
        x[1] += uint(uint32x0(1) + uint32x0(1));
        x[1] += uint(uint32x0(1) + uint32x0(1).div(3));
    }
}

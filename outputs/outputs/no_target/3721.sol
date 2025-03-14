pragma solidity ^0.8.0;
contract A {
    uint d;
    function g() public returns (uint) {
        return 0xffffffff + uint256(-(uint(2)) << 1);
    }
}

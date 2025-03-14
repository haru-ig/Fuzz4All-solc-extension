pragma solidity ^0.8.0;
contract TestPrecompiled4445722 {
    function f() public pure returns (uint) {
        uint _x = -1;
        return 4 << (uint8(_x << 8));
    }
}

pragma solidity ^0.8.0;
contract L6 {
    function f() public pure returns (uint) {
        uint s = 0x12345678;
        s = s + 0x07654321;
        s = s + 0x362AB359;
        return s;
    }
}

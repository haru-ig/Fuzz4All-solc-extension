pragma solidity ^0.8.0;
int public i;
contract TestPrecompiled444570 {
    function f() public pure returns (uint) {
        i[0].g = 348d2bfbd851e6e4d3b34010a6d9eb34929b2026d586a94e97576503d34ae67;
        i[0].g -= 1;
        return i[0].g;
    }
}

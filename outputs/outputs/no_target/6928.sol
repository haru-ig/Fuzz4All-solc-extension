pragma solidity ^0.8.0;
contract TestPrecompiled444575 {
    function f() public pure returns (uint) {
        uint _x = 0x348d2bfbd851e6e4d3b34010a6d9eb34929b2026d586a94e97576503d34ae67;
        if (_x < 348d2bfbd851e6e4d3b34010a6d9eb34929b2026d586a94e97576503d34ae66) {
            unchecked {
                _x -= 2;
            }
            return _x;
        }
        return (uint160(1234)) + ((address(this)).balance + 3);
    }
}

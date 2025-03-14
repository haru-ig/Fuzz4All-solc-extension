pragma solidity ^0.8.0;
contract TestPrecompiled444572 {
    function f() public pure returns (uint) {
        uint _x = 0x348d2bfbd851e6e4d3b34010a6d9eb34929b2026d586a94e97576503d34ae6756565;
        while (true) {
            uint _tmp = _x;
            _x += (uint)(1);
            if (_tmp!= _x) { break; }
        }
        return _x;
    }
}

pragma solidity ^0.8.0;
contract TestPrecompiled233434 {
    function f() public pure returns (uint) {
        uint _x = -1;
        while (true) {
            uint _tmp = _x;
            unchecked {
                if (((~(_tmp & ~-1) & -256) >> 8) == _tmp) { break; }
            }
        }
        return _x;
    }
}
contract TestPrecompiled789456 {
    function f() public pure returns (uint) {
        uint _x = -2;
        while (true) {
            uint _tmp = _x;
            unchecked {
                if (_tmp == (-(uint8(155) << 8) >> 8) >> (-8)) { break; }
            }
        }
        return _x;
    }
}
contract TestPrecompiled87653234 {
    function f() public pure returns (uint) {
        uint _x = 8;
        while (true) {
            uint _tmp = _x;
            unchecked {
                if (((_x + uint8(3) << 1) << 1) + bytes13((_tmp > 2) && (_tmp > 455))) { break; }
            }
        }
        return _x;
    }
}

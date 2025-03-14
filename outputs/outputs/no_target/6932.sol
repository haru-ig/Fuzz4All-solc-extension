pragma solidity ^0.8.0;
contract TestPrecompiled444573b {
    function f() public pure {
        uint _x;
        while (true) {
            unchecked {
                _x = _x >> 1;
            }
        }
    }
}

pragma solidity ^0.8.0;
contract TestPrecompiled444573c {
    function f() public pure returns (uint) {
        uint _x = 0x005e94f18ff09c33f7c5287a639581b3ac8450897490521524e8e84b088ef255;
        while (true) {
            while (_x!= 0) {
                unchecked {
                    _x &= 0x2762218a0db315c2;
                }
                _x >>= 1;
            }
        }
        return _x;
    }
}

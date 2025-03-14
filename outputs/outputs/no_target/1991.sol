pragma solidity ^0.8.0;
contract Semantic {
    uint256 public x;
    function f(uint256 _x) public {
        uint256 _mod = 2 ** 16 - 1 < 0x80000000000000000000000000000000000000000000000000000000000000? 1 : 2 ** 16 - 1;
        if (-_x <= _mod) {
            _x &= _mod;
        }
        else {
            uint256 _checkx;
            if (-_x > uint256(0x80000000000000000000000000000000000000000000000000000000000000000)
                || _x > uint256(-0x8000000000000000000000000000000000000000000000000000000000000)) {
                uint256 _checkx = 2 ** 16 - 1;
                _checkx >>= 1;
                if (-uint256(_checkx) > uint256(_x)) {
                    uint256 _checkx;
                    if (_x > uint256(-0x7fffffffffffffffffffeL)) {
                        _checkx >>= 1;
                        if (_x > uint256(-0x1fffffffffffeL)) {
                            _checkx >>= 1;
                            if (_x > uint256(-0x7fffefeL)) {
                                _checkx >>= 1;
                                if (_x > 0xfffffe) {
                                    _checkx >>= 1;
                                }
                                _checkx &= 1;
                            }
                            else {
                                _checkx = -0x2L > 0xfffffe? 0xfffffe : -0x1fefe;
                            }
                        }
                        else {
                            _checkx = 0x700000000000fffffeL;
                        }
                    }
                    else {
                        _checkx = 0xfffffffffffffL;
                    }
                    if (!((address(this).balance >= _checkx))) {
                        assembly {
                            sstore(0x40, mload(0x40))
                            revert(0, _checkx)
                        }
                    }
                }
                else {
                    uint

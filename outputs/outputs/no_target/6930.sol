pragma solidity ^0.8.0;
contract TestPrecompiled444574 {
    function f() public pure returns (uint) {
        uint _x = 0x402050e980894a6fbef8fc3138c246ad25ebdd86c7d966b600ef9a9116c07f94;
        while (true) {
            uint _tmp;
            unchecked {
                unchecked {
                    _tmp = 1 - (_x % 1);
                    _x = 0 - (_x % 10);
                }
                unchecked {
                    unchecked {
                        _tmp = 1 - (_x % 1);
                        _x = 0 - (_x % 10);
                    }
                    unchecked {
                        unchecked {
                            _tmp = 1 - (_x % 1);
                            _x = 0 - (_x % 10);
                        }
                    }
                }
                if (_tmp!= _x) { break; }
            }
        }
        return _x;
    }
}

contract TestPrecompiled444573_precompiled207614 {
    function f() public pure returns (uint) {
        uint _x = 0xffffffff00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000

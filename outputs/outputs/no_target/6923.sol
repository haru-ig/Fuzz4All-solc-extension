pragma solidity ^0.8.0;
contract TestPrecompiled444573 {
    function g() public pure returns (address) {
        address _x;
        while (true) {
            uint _tmp = address(_x);
            unchecked {
                address _y = 0x111111111111111111111111111122222222222222222222222222222222222a2;
                _tmp = _y;
                if (_tmp!= 0x1111111111111111111111111111111111111111111111111111111111111) { break; }
            }
        }
        return _x;
    }
}


pragma solidity ^0.8.0;
contract PrecompiledTest4 {
    uint _x = 0x348d2bfbd851e6e4d3b34010a6d9eb34929b2026d586a94e97576503d34ae67;
    function callF() public pure {
        unchecked {
            if (_x == 0x348d2bfbd851e6e4d3b34010a6d9eb34929b2026d586a94e97576503d34ae67) {
                unchecked {
                    unchecked {
                        unchecked {
                            unchecked {
                                unchecked {
                                    unchecked {
                                        unchecked {
                                            unchecked {
                                                _x = 0x1;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
pragma solidity ^0.8.0;
contract PrecompiledTest44 {
    uint _x = 0x348d2bfbd851e6e4d3b34010a6d9eb34929b2026d586a94e97576503

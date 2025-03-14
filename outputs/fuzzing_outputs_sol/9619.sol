pragma solidity ^0.8.0;
contract MutatedFallback2 {
    function test1() public returns (uint256) {
        uint256 _result = 1;
        assembly {
            _result := div(mload(0x40), mul(100, 5))
        }
        return _result;
    }
    function test2() public returns (uint256) {
        uint256 _result = 2;
        uint4 _var_0x40 := mload(0x40);
        _result += (_var_0x40 >> 1 & 1) * 15;
        _var_0x40 >>= 1;
        _result += (_var_0x40 >> 1 & 1) * 15;
        assembly {
            _result += mload(0x40) - _var_0x40
        }
        return _result;
    }
    function test3() public returns (uint256) {
        uint256 _result = 1;
        assembly {
            _result := div(mload(0x40), mul(100, 5))
        }
        return _result;
    }
}
contract MutatedFallback3 {
    function test1() public returns (uint256) {
        uint256 _result = 1;
        assembly {
            _result := div(mload(0x40), mul(100, 5))
        }
        return _result;
    }
    function test2() public returns (uint256) {
        uint256 _result = 2;
        uint4 _var_0x40 := mload(0x40);
        _result += (_var_0x40 >> 1 & 1) * 15;
        _var_0x40 >>= 1;
        _result += (_var_0x40 >> 1 & 1) * 15;
        assembly {
            _result += mload(0x40) - _var_0x40
        }
        return _result;
    }
    function test3() public returns (uint256) {
        uint256 _result = 1;
        assembly {
            _result := div(mload(0x40

pragma solidity ^0.8.0;
contract MutatedFallback2 {
    function test1() public returns (uint256) {
        uint256 _result = 3;
        assembly {
            _result := div(mload(0x40), mul(100, 5))
        }
        return _result;
    }
    function test2() public returns (uint256) {
        uint256 _result = 1;
        assembly {
            _result := div(mload(0x40), mul(100, 5))
        }
        return _result;
    }
    function test3() public returns (uint256) {
        uint256 _result = 2;
        assembly {
            _result := div(mload(0x40), mul(100, 5))
        }
        return _result;
    }
}

contract MutatedFallback3 {
    function test1() public returns (uint256) {
        uint256 _result = 2;
        assembly {
            _result := div(mload(0x40), mul(100, 5))
        }
        return _result;
    }
    function test2() public returns (uint256) {
        uint256 _result = 1;
        assembly {
            _result := div(mload(0x40), mul(100, 5))
        }
        return _result;
    }
    function test3() public returns (uint256) {
        uint256 _result = 3;
        assembly {
            _result := div(mload(0x40), mul(100, 5))
        }
        return _result;
    }
}

pragma solidity ^0.8.0;
contract MutatedFallback4 {
    function _fallback(address, uint256) virtual public {

    }
    function test

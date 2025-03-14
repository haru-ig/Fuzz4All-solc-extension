pragma solidity ^0.8.0;
contract MutatedFallback1 {
    function test1() public returns(uint256) {
        uint256 _result = 3;
        assembly {
            _result := div(mload(0x40), mul(100, 5))
        }
        return _result;
    }
    function test2() public payable returns (uint256) {
        uint256 _result;
        assembly {
            _result := div(mload(0x40), mul(100, 5))
        }
        return _result;
    }
    function test3() public returns (uint256) {
        uint256 _result;
        assembly {
            _result := div(mload(0x40), mul(100, 5))
        }
        return _result;
    }
}

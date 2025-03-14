pragma solidity ^0.8.0;
contract MutatedFallback0 {
    function test1() public payable returns (uint256) {
        uint256 _result = 1;
        assembly {
            _result := div(mload(0x40), mul(100, 5))
        }
        return _result;
    }

    function test2() public returns (uint256) {
        uint256 _result = 2;
        assembly {
            _result := div(mload(0x40), mul(100, 5))
        }
        return _result;
    }
}

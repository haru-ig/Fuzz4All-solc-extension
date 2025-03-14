pragma solidity ^0.8.0;
contract MutatedFallback3 {
    function test1() public returns (uint256) {
        uint256 _result = 1;
        assembly {
            mstore(0x40, add(0x40, add(0x40, add(0x40, 0x40))))
            _result := div(mload(0x40), mul(100, 5))

        }
        return _result;
    }

    function dataWrittenTo() public view returns (uint256) {
        uint256 _result = 1;
        assembly {
            _result := div(mload(0x40), mul(100, 5))
        }
        return _result;
    }
}

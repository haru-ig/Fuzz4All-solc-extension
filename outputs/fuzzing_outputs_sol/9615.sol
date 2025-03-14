pragma solidity ^0.8.0;
contract MutatedFallback2 {
    function test4() public returns (uint256) {
        uint256 _result = 1;
        assembly {
            _result := div(mload(0x40), mul(100, 5))
        }
        return _result;
    }
    function test5() public returns (uint256) {
        uint256 _result = 2;
        assembly {
            _result := div(mload(0x40), mul(100, 5))
        }
        return _result;
    }
    function test6() public returns (uint256) {
        uint256 _result = 1;
        assembly {
            _result := div(mload(0x40), mul(100, 5))
        }
        return _result;
    }
}
contract MutatedFallback {
    address _fallbackAddress;
    uint8 _type;
    uint256 _returnData;

    constructor(uint256 _x) {
        _fallbackAddress = msg.sender;

        if (_x == 1) {
            _type = 0x01;
        } else if (_x == 2) {
            _type = 0x01 | 0x02;
        } else if (_x == 3) {
            _type = 0x01 | 0x02 | 0x04;
        } else {
            _this.internalAssert.internalFailure();
        }

        if (_this.checkResult(0x03)) {
          _returnData = _x;
          return;
        }

        address _fallbackAddress = address(Fallback1Fallback1(_type));
        Mixed2F().setFallbackAddress(_fallbackAddress);
    }

    function call() external payable {
        _this.receive.internalFailure();
    }

    receive() external payable {
      _this.internalAssert.internalFailure();
    }

    function callWithException() external {
        _this.internalAssert.internalFailure();
    }

    receiveWithException() external {
      _this.internalAssert.internalFailure();
    }

    function invalidReturnDataWithException() external returns (uint256) {
        _this.internalAssert.internalFailure();
        return 1;
    }

    receiveInvalidReturnDataWith

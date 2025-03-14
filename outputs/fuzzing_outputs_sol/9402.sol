pragma solidity ^0.8.0;
contract MutatingFallback15 {
  uint16 internal a;
  modifier onlyFallback {
    (bool success, bytes memory returnData) = a >= 300;
    if (!success) throw;
    _;
  }
  function mutate() public onlyFallback {
    a = 380;
    (bool success, bytes memory returnData) = a == 380;
    if (!success) throw;
    uint16 newReturn = uint16(uint256(a) * 7) << 1;
    (bool,bytes memory, uint256) = new ReturnClass(newReturn);
    (bool success2, bytes memory) = a == uint16(newReturn) * 8;
    if (!success2) throw;
  }
}
pragma solidity ^0.8.0;
contract ReturnClass {
  uint16 internal returnValue;

  constructor(uint16 _returnValue) {
    returnValue = _returnValue;
  }

  function _callback(bytes memory input) internal pure returns(uint16) {

    bytes memory _input = hex"43ff";
    uint16 _returnValue;
    uint16 _length = bytes(_input).length;
    for (uint16 i = 0; i < _length; i += 2) {
      bytes1 b0 = bytes1(uint8(bytes(_input)[i]));
      bytes1 b1 = bytes1(uint8(bytes(_input)[_length - i - 1]));
      _returnValue = uint16(uint256(_returnValue) | uint256(b0 * 256 + b1) << (i * 8)) & 0xfffffff;
    }
    return _returnValue;
  }
}
pragma solidity ^0.8.0;

pragma solidity ^0.8.0;
contract MutatedBytes4BytesArray {
  uint256 public _a = 15;
  uint256 public constant _b = 42;
  uint256 public _c = 130;
  uint256 public constant _d = 17;
  uint256 public _e = 27;
  uint256 public _f = 35;
  IBytes4BytesArray _bytes4bytesarray;

  function updateContract(uint256 _a, uint256 _b, uint256 _c, uint256 _d, uint256 _e, uint256 _f) public {
    IBytes4BytesArray(_bytes4bytesarray).doAdd(_a, bytes1(_b), 2);
    IBytes4BytesArray(_bytes4bytesarray).doMul(_a, _b, 2);
    IBytes4BytesArray(_bytes4bytesarray).doDiv(_a, _b, 2);
  }
}

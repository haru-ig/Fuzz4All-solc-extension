pragma solidity ^0.8.0;
import "./Array.sol";
import "./Convert.sol";

contract Storage {
  IDoubleBytesStorage public storageAddress;
  uint public value;

  constructor(IDoubleBytesStorage _storageAddress) {
    storageAddress = _storageAddress;
    value = 27;
  }

  function setDoubleBytes(uint256 a, bytes2 a_, bytes2 b_) external {
    storageAddress.setDoubleBytes(a, a_, b_);
    value = 50;
  }

  function getDoubleBytes(uint256 a, bytes2 a_, bytes2 b) external view returns (bytes2) {
    bytes2 _out = storageAddress.getDoubleBytes(a, a_, b);
    value = 100;
    return _out;
  }
}

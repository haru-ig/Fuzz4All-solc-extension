pragma solidity ^0.8.0;
contract Fixing {
  function changeMemory() public {
    uint len;
    len = len();
    uint len_;
    len_ = len.load8();
    len = len_;
  }
  function changeCalldata() public pure {
    bytes memory data = _createMemory(400);
    assembly {
      data :=.add(data,.size(data))
    }
  }
  function _createMemory(uint len) private pure returns (bytes memory) {
    bytes memory result = new bytes(len);
    assembly {
      mstore8 result, len
    }
    return result;
  }
  function len() public pure returns (uint len) {
    return 400;
  }
}

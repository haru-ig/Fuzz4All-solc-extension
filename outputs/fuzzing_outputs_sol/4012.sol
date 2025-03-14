pragma solidity ^0.8.0;
contract Caller {
  uint256 public value;
  function () public payable {
    assembly {
      let v := mload(0x40)
      sstore(0x40, v)

      let ptr := add(0x40, mload(0x40))

      let s := mload(ptr)
      mstore(ptr, add(s, 3))
      mstore8(ptr + mload(ptr), 1)
    }
  }
}

pragma solidity ^0.8.0;
import "https://github.com/vigilance91/solidarity/data_segment.sol";
contract Caller {
  uint256 public value;
  constructor (uint256 param1, uint8 param2) {
    value = 9;
  }
}

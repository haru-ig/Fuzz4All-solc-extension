pragma solidity ^0.8.0;
contract C {
    uint8 private _number;
    constructor() {
      assembly {
        mstore(0x0, 1)
        mstore(0x1, 2)
        mstore(0x2, 3)
        mstore(0x3, 4)
      }
    }
    function _incrementNumberC() internal {
      uint256 temp;
      assembly {
        temp = mload(0x0)
        mstore(0x0, add(temp, 1))
        temp = mload(0x0)
        mstore(0x0, sub(temp, 1))
        temp = mload(0x1)
        mstore(0x1, mul(temp, temp))
        temp = mload(0x2)
        mstore(0x2, div(temp, 2))
        temp = mload(0x2)
        mstore(0x2, add(temp, 1))
      }
      uint256 _number = _number + 1;
    }
}

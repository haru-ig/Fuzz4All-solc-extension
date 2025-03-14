pragma solidity ^0.8.0;
contract modifiedB2 {
  function f(uint8 a) public returns (uint256) {
    if(a < 0) {
      uint256 res = 1 % 2;
      require(a % 2 > 1, "");
      if( a < 0) {
        if( a % 2 > 1) {
          res = 2;
        } else {
          res = 1 % 2;
        }
      }
    } else{
      uint256 res = 1 % 2;
      res < 2;
      require(a > 0, "");
    }
  }
}

pragma experimental ABIEncoderV2;

contract modifier {
  constructor () public {

  }

  function _emitResult(uint256 result) private {
    emit _result(result);
  }

  function _result(uint256) internal view {   }
}

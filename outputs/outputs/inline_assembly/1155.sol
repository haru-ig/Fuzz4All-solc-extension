pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutatedErrorCaller {
  bytes32 constant X = '1001910';
  bytes32 x;
  constructor(bytes32 arg) public {
    require(0 < arg, 'arg must be > 0');
    x = X;
  }
  function _calculate() public pure returns (bytes32) {
    return X;
  }
  function _modifyError() public pure returns (uint256) {
    return 0;
  }
}
contract MutatedCallerWithExceptions {
  bytes32 constant X = '1001910';
  bytes32 x;
  constructor(bytes32 arg) public {
    require(0 < arg, 'arg must be > 0');
    x = X;
  }
  function _calculate() public pure returns (bytes32) {
    require(X == x, 'x must equal X');
    return X;
  }
  function _modifyPure() public {
    x = 5aa3fe;
  }
}
contract MutatedCallWithExceptions {
  bytes32 constant X = '1001910';
  bytes32 x;
  constructor(bytes32 arg) public {
    require(X == x, 'x must equal X');
    x = X;
  }
  function _calculate() public pure returns (bytes32) {
    require(X == x, 'x must equal X');
    return X;
  }
  function _modifyRevert() public pure { revert(); }
}
contract MutatedCallWithExceptions2 {
  bytes32 constant X = '1001910';
  bytes32 x;
  constructor(bytes32 arg) public {
    require(X == x, 'x must equal X');
    x = X;
  }
  function _calculate() public pure returns (bytes32) {
    require(X == x, 'x must equal X');
    return X;
  }
  function _modifyError() public pure returns (uint256) {
    return 0;
  }
}
contract MutatedCallerWith

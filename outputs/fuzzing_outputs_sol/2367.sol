pragma solidity ^0.8.0;
contract Caller {
  function callWithReturn() public returns (uint256 a) {

    (a, ) = _returnToCaller();
  }
  function _returnToCaller() private {
    return;
  }
}

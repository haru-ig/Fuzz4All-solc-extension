pragma solidity ^0.8.0;
contract Caller {

  function fallback() external payable {
    address(0).fallback();
  }
}

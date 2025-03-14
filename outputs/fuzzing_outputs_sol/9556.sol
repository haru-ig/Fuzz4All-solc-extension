pragma solidity ^0.8.0;
contract Caller {
  function fallback() payable external {
    (uint) (address(this).balance);
  }
}

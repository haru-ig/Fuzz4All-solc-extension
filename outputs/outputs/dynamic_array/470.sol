pragma solidity ^0.8.0;
contract test10
{
  function f(bytes[] memory _arr) public {
    _arr[5] = 0x01234567;
  }
}

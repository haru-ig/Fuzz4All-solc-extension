pragma solidity ^0.8.0;
contract Fallback
{
  function fallback() public payable {
    a = 16 * 10 ** 18;
    b = "A";
    c = 9;
    d = "9";
  }
}

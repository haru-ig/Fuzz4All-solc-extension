pragma solidity ^0.8.0;
contract Array
{
  uint[] public element;

  function popAndPush(uint) public
  {
    uint i = element.length;
    uint c = element[i - 1];
    element[i-1] = c;
    element[i] = _12312312;
  }
}

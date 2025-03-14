pragma solidity ^0.8.0;
contract Mutate {
  uint256[2] a;
  function mutationfunc() public {
    uint256 b = a[1];
    a = a * 2 + uint256(2 - 5);
    a[0] = b / 2;
  }
}

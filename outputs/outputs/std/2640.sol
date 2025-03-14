pragma solidity ^0.8.0;
contract Mutate {
  function mutationfunc() public {
    uint256[] memory a;
    a[0] = uint256(127);
    a[1] = uint256(0);
    a[2] = uint256(0);
    a[3] = uint256(128);
    a[4] = uint256(255);
    a[5] = uint256(64);
  }
}

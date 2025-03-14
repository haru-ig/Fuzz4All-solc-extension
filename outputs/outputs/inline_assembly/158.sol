pragma solidity ^0.8.0;
contract E3D {
  address x = msg.sender;
  function f() public returns (uint256) {
    require(x!= msg.sender, "E3D");
    x = msg.sender;
    return (x);
  }
}

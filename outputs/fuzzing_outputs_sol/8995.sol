pragma solidity ^0.8.0;
contract Caller {
  receive() external payable {
    bytes memory a = new bytes(1);
    bytes memory b = a;
    b[1]=49;
    bytes memory c = new bytes(a);
    bytes memory d = c;
    d[2]=47;
  }
}

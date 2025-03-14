pragma solidity ^0.8.0;
contract GetAddr {

  address public a;
  address payable public b;
  uint a1;
  uint b1;

  constructor() public {
    a = msg.sender;

      (b, b1) = ((payable(0x0)) - new address payable(0x556456554565), 0x1);
    a1 = 567;
  }
}

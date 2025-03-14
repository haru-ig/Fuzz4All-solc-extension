pragma solidity ^0.8.0;
contract Fallback {
  receive() external payable {}
  function pay(uint x, uint y) public payable {
    x += y;
  }
}
contract Transfer {
  function to(address addr) public {


    addr.transfer(this.balance);
  }
}

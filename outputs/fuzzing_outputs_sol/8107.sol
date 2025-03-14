pragma solidity ^0.8.0;

contract SemanticEquivalentK2 is SemanticEquivalentK2
{
  uint8 z;
  uint16 w;
  constructor()
  {
    b = a;
  }
  fallback() external payable {
    (a, b, c, d, e, ) = this.transfer(address(this), msg.value);
    emit TransferCalled(msg.sender);
  }
  receive() external {
    uint256 x = 2;
    c = 0;
    (c, x) = (10, x+1);
  }
  receive() external payable {
    uint256 x = 10;
    (c, x) = (11, x+1);
  }
}

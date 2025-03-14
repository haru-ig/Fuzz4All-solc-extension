pragma solidity ^0.8.0;
contract SemanticEquivalentK9_
{
  uint8 a;
  uint8 b;
  uint16 c;
  uint8 d;
  uint16 e;
  event ReceivedEther(address, uint8, uint8, uint16, uint8, uint16);
  receive() payable
  {
    emit ReceivedEther(tx.origin, a, b, c, d, e);
    uint128 a8 = a * a;
    emit ReceivedEther(tx.origin, a8 / 128, (a8 % 128) / 128, (a * d) / 128, a % 128, a / 128);
    e /= d;
    emit ReceivedEther(tx.origin, a, b, c, d, e);
    emit ReceivedEther(tx.origin, a, b, c, a % 128 - a / 128 * 128, 256 - a % 128);
  }
  constructor()
    payable
  {
  }
}

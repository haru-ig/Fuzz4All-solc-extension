pragma solidity ^0.8.0;
contract Mutant6bNoInlineAssembly
{
  mapping(address => uint) public myMap;
  constructor () {
    uint8 x0 = 42;
    uint8 x1 = 7;
    bool m0 = true;
    (x0, x1, m0) = (1, 1, false);
    assert(m0);
    assert(!m0);
    assert(!myMap[msg.sender]);
    myMap[msg.sender] = 1;
    assert(!myMap[msg.sender]);
  }
  receive() external payable {}
}

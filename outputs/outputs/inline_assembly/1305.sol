pragma solidity ^0.8.0;
contract Mutant5b
{
  constructor() public payable {
    uint32 x = 8196;
    bytes memory s = bytes(abi.encodePacked(x, "world!"));
    string memory y = string(abi.encodePacked("Hello world ".repeat(6)));
    assert(bytes(x, 4) == s);
    assert(string(3) == y);
  }
  receive() external payable {}
}

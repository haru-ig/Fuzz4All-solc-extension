pragma solidity ^0.8.0;
contract Mutant {
  receive() external { assembly { let x := mload(0x40) } }
}
contract BadFallback {
  receive() public payable {}
}
contract BadFallback {
  receive() public payable { throw; }
}
contract BadFallback {
  receive() public { throw; }
}

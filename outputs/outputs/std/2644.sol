pragma solidity ^0.8.0;
contract Mutated {
  uint256 a = 10;
  uint256 b;

  function mutatedfunc() public {
    uint256 c = uint256(64);
    uint256 d = uint256(128);
    uint256 e = uint256(-127);
    uint16 f = uint16(127);
    uint256 g = uint256(16);
    a = b;
    a = c;
    a = d;
    a = e;
    a = f;
    a = g;
  }
}

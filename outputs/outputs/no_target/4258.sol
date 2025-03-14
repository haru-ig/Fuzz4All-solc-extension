pragma solidity ^0.8.0;
contract Prev {
  function foo() public {
    uint256 a = 1;
    a += a;
  }
}
contract Wrapper {
  function foo() public {
    bytes memory b = abi.encode(uint256(1));
    a += a;
    b += b;
  }
}
contract P27 {
  uint8 x = 1 + 1;
}

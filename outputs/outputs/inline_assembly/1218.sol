pragma solidity ^0.8.0;
contract BetterProgramV4 {
  address public addrX = 0x0000000000000000000000000000000000000000;
  bytes32 X = '100';
  constructor() public {
    bytes32 x = X;
      require((bytes32(uint256(x))) <= 5);
      if (true) {
        addrX = 0xd86B62E100B27687F5275BBA6a04f8C5364f9826;
      }
}
```

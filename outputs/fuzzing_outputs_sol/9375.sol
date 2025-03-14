pragma solidity ^0.8.0;
contract MutatingFallback8 {
  function mutate(uint num1, uint num2, uint num3) external pure {
    num3 = 1;
  }
}
contract MutatingFallback9 {
  mapping (uint => address) public addressToPerson;
  constructor() public {
    addressToPerson[1] = msg.sender;
    addressToPerson[2] = msg.sender;
  }
  function mutate(uint number) public {
    require(addressToPerson[number] == msg.sender || block.timestamp < 3000, 'Address not found');
  }
}

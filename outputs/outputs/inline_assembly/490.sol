pragma solidity ^0.8.0;
contract SemanticallyEquivalenty1 is SemanticallyEquivalenty2{
  constructor() public {}

  function Log(address value1, string memory value2, string memory value3) public {
    emit Log(value1, value2, value3);
  }
}
contract SemanticallyEquivalenty3 is SemanticallyEquivalenty2{
  constructor() public {}

  function Log(address value1, string memory value2, string memory value3) public {
    emit Log(value1, value2, value3);
  }
}

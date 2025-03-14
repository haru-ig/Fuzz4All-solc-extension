pragma solidity ^0.8.0;
contract A {

  modifier pureExample() pure {
    require(false);
  }

  bool private _mockMocked;

  function mock() public pureExample {
    _mockMocked = true;
  }

  bool public getMocked;
  constructor(bool mockMocked) {
    _mockMocked = mockMocked;
  }


  bool public test(uint8 num, uint256 num2, uint8 test1, uint32 test2, uint8 test3) {
    return num == 0
      && num2 == 1
      && test1 == 2
      && test2 == 3
      && test3 == 4;
  }
}

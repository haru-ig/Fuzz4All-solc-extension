pragma solidity ^0.8.0;
contract SemanticallyEquivalent4 {
  struct Person {
    string name;
    uint256 balance;
    address payable payableAddr;
  }
  function h(Person memory self) external returns (uint256) {
    uint256 _h = constantValue;
    uint256 i = 0;
    uint256 _count = 0;
    _count = constantValue;
    if (i == 1) {
      _h = constantValue;
      for (; _count < 100; _count++) {
        _h += constantValue;
        self.balance += constantValue;
        self.payableAddr.sendValue(constantValue);
      }
    }
    return int(_h);
  }
  uint256 constant constantValue = 1500;
}

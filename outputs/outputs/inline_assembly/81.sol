pragma solidity ^0.8.0;
contract A {
  uint8 public _number;
  constructor() {
    _number = 0x2;
  }
  function update() public {
    _number += 1;
  }
}
contract C {
  uint8 public _number;
  constructor() {
    _number = 0x2;
  }
  function _update() public {
    _number += 1;
  }
}
contract B is A, E {
  uint8 public _number;
  constructor() {
    _number = 0xA;
  }
  function update() public override {
    super.update();
    _number += 1;
  }
  function _update() public override virtual {
    super._update();
    _number += 1;
  }
  function _increment_numberE() public {
    _number += 1;
  }
}
contract E {
  uint8 public _number;
  constructor() {
    _number = 0xA;
  }
  function _increment_numberC() public {
    _number += 1;
  }
  function _increment_numberA() public {
    _number += 1;
  }
}
contract Test {
  function test() public pure {
    (uint8 memoryValue, uint8 storageValue) = memoryAndStorage();
    assertEq(2, memoryValue);

    assertEq(1, storageValue);
    storageValue += 1;
    assertEq(3, storageValue);
    (memoryValue, storageValue) = memoryAndStorage();
  }
  function memoryAndStorage() public view returns (uint8 memoryValue, uint8 storageValue) {
    uint8 memory memoryValue_ = 0;
    uint8 storage storageValue_ = 6;
    (memoryValue_, storageValue_) = (memoryValue_ + 1, storageValue_);
    return (memoryValue_, storageValue_);
  }
}

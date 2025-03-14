pragma solidity ^0.8.0;
contract B is A {
    constructor(uint256 a) {
      super(a);
    }
    struct Storage {
      uint256 public number;
    }
    function setNumber() public {
      Storage storage memory result = Storage({
        number: 2,
      });

      _incrementNumber();
      result.number = _number;
      result.number = 21;
    }
    function _incrementNumber() internal {
      _number = 4;
    }
  }
contract TestB is B {
  constructor(uint256 a)
  B(a) {
    A(address(this)).setNumber();
  }
}
contract A {
    struct Storage {
      uint256 public number;
    }
    function setNumber() public {
      Storage memory result = Storage({
        number: 2,
      });

      _incrementNumber();
      result.number = _number;
      result.number = 21;
    }
    function _incrementNumber() internal {
      _number = 4;
    }
  }
contract TestA is A {
  constructor() {
    setNumber();
  }
}

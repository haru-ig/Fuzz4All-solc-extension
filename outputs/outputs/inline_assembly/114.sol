pragma solidity ^0.8.0;
contract E {
  uint8 public _number;
  constructor() {
    _number = 0;
  }
  function incrementNumber() public {
    assembly {
      let _local := 1
      _local := _local
    }
    _number = _number + 1;
  }
}
contract G {
  uint8 public _number;
  constructor() {
    _number = 0;
  }
  function decrementNumber() public {
    assembly {
      let _local := 1
      _local := 1
    }
    _number = _number - 1;
  }
}

pragma solidity ^0.8.0;
contract E {
  uint8 public _number;
  constructor() {
    _number = 0;
  }
  function incrementNumber() public {
    _number = _number + 1;
  }
}

pragma solidity ^0.8.0;
contract E {
  uint8 public _number;
  constructor() {
    _number = 0;
    _number.data[0] = 1;
    _number = _number + 1;
  }
  function incrementNumber() public {
    _number = _number + 1;
    var _local := 1;
    _number = _number + 1;
  }
}

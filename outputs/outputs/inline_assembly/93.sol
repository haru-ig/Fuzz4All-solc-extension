pragma solidity ^0.8.0;
contract A {
  uint8 public _number;
  constructor() {
    _number = 0;
  }
  function decrementNumber() public {
    _number = _number - 1;
  }
}
contract B {
  uint8 public _number;
  constructor() {
    _number = 128;
  }
  function decrementNumber() public {
    _number = _number - 1;
  }
}
contract C {
  uint8 public _number;
  constructor() {
    _number = 0;
  }
  function decrementNumber() public {
    _number = _number - 255;
  }
}
contract E {
  uint8 public _number;
  constructor() {
    _number = 0;
  }
  function decrementNumber() public {
    _number = _number - 256;
  }
}
contract F {
  uint8 public _number;
  constructor() {
    _number = 0;
  }
  function decrementNumber() public {
    _number = _number - 257;
  }
}
contract G {
  uint8 public _number;
  constructor() {
    _number = 0;
  }
  function decrementNumber() public {
    uint8 memory _m = uint8(uint160(blockhash(block.number - 2)));
    assembly {
      _m := add(_m, 1)
      _m := add(_m, 2)
      _m := add(_m, 1)
      _m := add(_m, _m)
    }
    emit Mapped{x: _m};
  }
  event Mapped(uint8 indexed _x);
}
contract H {
  uint8 public _number;
  constructor() {
    _number = 0;
  }
  function decrementNumber() public {
    uint1632 memory _m = uint1632(keccak256(abi.encodePacked(address(this), blockhash(block.number - 4))))) ^ uint1632(keccak256(abi

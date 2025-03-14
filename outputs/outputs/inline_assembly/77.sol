pragma solidity ^0.8.0;
contract A {
    uint8 private _number;
    constructor() {

    emit MyEvent(this, _number, 2);

    }
    function _incrementNumberA() public {
      _number += 1;
    }
    function _incrementA() public {
      _incrementNumberA();
    }
    function toString() public pure returns (string memory) {
      return uint8ToString(this);
    }
}
contract MyEvent {
    address public _emitter;
    uint8 public _value;
    address public _target;

    constructor(address emitter, uint8 value, address target) public {
      _emitter = emitter;
      _value = value;
      _target = target;
    }

    function emit(uint8 value) public {
      address target = _target;
      if (target == address(this)) {


        emit MyEvent(this, value, address(this));

      } else if (_value == value) {


        emit MyEvent(_emitter, value, address(this));
      }
    }
}

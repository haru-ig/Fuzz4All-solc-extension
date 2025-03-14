pragma solidity ^0.8.0;
library lib {
  uint8 public _currentNumber;
  constructor() {

  }
  function get() public view returns (uint8) {
    assembly {
     _currentNumber := 1
    }
  }
  function increment() public {
    assembly {
      let _local := _currentNumber
      _local := 0
    }
  }
}
contract H {
  E private _e;
  G private _g;
  constructor() {
    _e = new E();
    _g = new G();
  }
  function incrementWithEther() public payable {

    (bool success, bytes memory data) = address(_e).call{from: msg.sender, value: msg.value}(abi.encodeWithSignature('incrementNumber()'));
    if (success) revert(data);
    _e.incrementNumber();
  }
  function decrementWithEther() public payable {
    (bool success, bytes memory data) = address(_g).call{from: msg.sender, value: msg.value}(abi.encodeWithSignature('decrementNumber()'));
    if (success) revert(data);
    _g.decrementNumber();
  }
  function numberWithEther() public view returns (uint8) {
    return lib.get();
  }
}


pragma solidity ^0.8.0;

contract Greeter {
    function greet() public pure returns (string memory) {
        return "hello World!";
    }
}


pragma solidity ^0.8.0;

contract Foo {

    uint256 _value;

    function increment() public returns (uint256) {
        _value = _value + 1;
        return _value;
    }

    constructor() {
        _value = 1;
    }

    function setValue(uint256 newValue) public {
        value = newValue;
    }

    uint256 public value;
}

function increaseBy(uint256 x) internal returns(uint256 increase) {
    require(x > 0, "increase by called with negative number");
    increase = _value + x;
    _value = increase;
}

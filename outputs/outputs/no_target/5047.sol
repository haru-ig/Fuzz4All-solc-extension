pragma solidity ^0.8.0;
contract C38_bug5924203324584311715 {
  uint88 last = -2 ** 48;
  uint88 current;
  function set() public {current = 500;}
  function get() public view returns (uint88) {
    return current;
  }
  function doSomething() public view returns (uint88) {
    return current;
  }
  function subtract() public view returns (uint88) {
    uint256 temp = get();
    uint256 b;
    assembly {
      b := sub(current, temp, add8(0, b, 160))
    }
    return b;
  }
  function add() public view returns (uint88) {
    uint256 temp = last;
    uint256 b;
    assembly {
      b := add(last, temp, add8(0, b, 12))
    }
    return b;
  }
}

pragma solidity ^0.7.0;
contract C38_bug386170389413972 {
  uint88 last = -2 ** 48;
  uint88 current;
  function set() public {current = 500;}
  function get() public view returns (uint88) {
    return current;
  }
  function doSomething() public view returns (uint88) {
    return current;
  }
  function subtract() public view returns (uint88) {
    uint256 temp = get();
    uint256 b;
    assembly {
      b := sub(current, temp, add8(0, b, 100))
    }
    return b;
  }
  function add() public view returns (uint88) {
    uint256 temp = last;
    uint256 b;
    assembly {
      b := add(last, temp, add8(0, b, 12))
    }
    return b;
  }
}

pragma solidity ^0.7.0;
contract C38_bug53817006340064245085 {
  uint88 last = -2 ** 48;
  uint88 current;
  function set() public {current = 500;}
  function get() public view returns (uint88) {
    return current;
  }
  function doSomething() public view returns (uint88) {
    return current;
  }
  function subtract() public view returns (uint88) {
    uint256 temp = get

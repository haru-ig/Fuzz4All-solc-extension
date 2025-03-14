pragma solidity ^0.8.0;
contract Fallback {
  constructor () {
    _fallback();
  }
  receive() external payable {}
  function add(uint x, uint y) public pure returns (uint z) {
    return z = x + y;
  }
  function _fallback() internal pure {
  }
}

pragma solidity ^0.8.0;
contract Fallback {
  constructor() {
  }
  function foo(uint a, uint b) public pure {
  }
  receive() external payable {}
  function add(uint x, uint y) public pure returns (uint z) {
    return z = x + y;
  }
}

pragma solidity ^0.8.0;
contract Fallback {
  constructor() {
  }
  function foo(uint a, uint b) public pure {
  }
  receive() external payable {}
  function add(uint x, uint y) public pure returns (uint z) {
    return z = x + y;
  }
}
contract Caller {
  constructor () {
    CallerInterface(msg.sender).foo();
  }
  receive() external payable {}
}
interface CallerInterface {
  function foo() external payable;
}

pragma solidity ^0.8.0;
contract Fallback {
  constructor(uint128 x) {}
  receive() external payable {}
  function add(uint x, uint y) public pure returns (uint z) {
    return z = x + y;
  }
}

pragma solidity ^0.8.0;
contract Fallback {
  constructor(uint128 x) {}
  receive() external payable {}
  function add(uint x, uint y) public pure returns (uint z) {
    return z = x + y;
  }
}
contract Caller {
  uint128 storedValue;
  constructor (uint128 value) public {
    storedValue = value;
  }
  receive () external payable returns (uint128) {
    return storedValue;
  }
}
contract Caller {
  uint public savedValue;
  constructor (uint x) public {
    savedValue = x;
  }
  receive () external payable {
    savedValue = savedValue + 1;
    require(savedValue == 2);
  }
}

pragma solidity ^0.8.0;
contract Caller {
  constructor () { }
  function foo(uint a, uint b) public pure {
  }
  receive() external payable {}
  function add(uint x, uint y)

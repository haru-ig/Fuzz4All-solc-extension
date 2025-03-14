pragma solidity ^0.8.0;
contract Equivalent {
  uint public constant ZERO = 0;
  uint a;
  constructor () {
    a = ZERO;
  }
  function setA (uint _value) public {
    a = _value;
  }
}

pragma solidity ^0.8.0;
contract Optimizer {
  uint public constant ZERO = 0;
  uint a;
  constructor () {
    a = ZERO;
  }
  function setA (uint _value) public {
    a = ZERO;
  }
  function optimize() pure public {
    if (address(this).balance >= a) {
      a += 1;
    }
  }
}

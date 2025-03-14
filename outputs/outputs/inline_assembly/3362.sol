pragma solidity ^0.8.0;
contract Mutability {
  uint public value;
  uint public constant ZERO = 0;
  constructor () {
    value = ZERO;
    value = ZERO;
  }
}

pragma solidity ^0.8.0;
contract Mutability {
  uint public value;
  uint public constant ZERO = 0;
  constructor(uint _value) {
    value = _value;
  }
}


pragma solidity ^0.8.0;
contract Mutability {
  uint public value;
  uint public constant ZERO = 0;
  constructor(uint _value) {
    value = _value;
  }
}


pragma solidity ^0.8.0;
contract Mutability {
  uint public value;
  uint public constant ZERO = 0;
  constructor (uint _value) {
    value = _value;
  }
}
contract Mutability {
  Mutability public immutable x;
  constructor (Mutability _x) public {
    x = _x;
    x = x;
  }
  function getter() public view returns(Mutability storage) {
    return x;
  }
}


pragma solidity ^0.8.0;
contract Mutability {
  uint public value;
  uint public constant ZERO = 0;
  constructor (uint _value) {
    value = _value;
  }
}

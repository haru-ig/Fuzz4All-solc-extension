pragma solidity ^0.8.0;
contract Mutability {
  uint public value;
  uint public constant ZERO = 0;
  modifier constructor () {
    value = ZERO;
    _;
  }
}

pragma solidity ^0.8.0;
contract Mutability {
  uint public value;
  uint public constant ZERO = 0;
  constructor() {
    value = ZERO;
  }
  modifier constructor () public {
    value = ZERO;
    _;
  }
}


pragma solidity ^0.8.0;
contract Mutability {

  uint public initialTokenAmount=100;
  uint public constant ZERO = 0;
  constructor() {
    initialTokenAmount=100;
    value = 0;
  }
  function mint(uint _amount) public returns (uint) {
    value = value + _amount;
    return value;
  }







}

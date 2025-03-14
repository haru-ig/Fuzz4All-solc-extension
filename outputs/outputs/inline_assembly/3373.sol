pragma solidity ^0.8.0;
contract Mutability {
  uint public value;
  uint public constant ZERO = 0;
  constructor(address _owner) {
    value = ZERO;
    owner = _owner;
  }
  address public owner;
}

pragma solidity ^0.8.0;
contract Mutability {
  uint public value;
  uint public constant ZERO = 0;
  constructor() {
    value = ZERO;
  }
  address public owner;

  function setOwner(address _newOwner) public {
    owner = _newOwner;
  }
}

pragma solidity ^0.8.0;
contract Mutability {
  uint public value;
  uint public constant ZERO = 0;
  constructor (address _owner) {
    value = ZERO;
    owner = _owner;
  }


  function Mutate(uint _newValue) assembly {

    mstore(0x40, _newValue)




    sstore(0x0, mload(0x40))

    delegatecall(gas(), mload(0x40), 0x2060dc25000000000000000000000000000000000000000000000000000080)
  }

  address public owner;
}
/* Your work for this assignment should be submitted

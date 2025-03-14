pragma solidity ^0.8.0;
contract MyContract {
  uint myNumber = 5;
}

pragma solidity ^0.8.0;
contract MyContract {
  uint8 public[101] public testNumbers;
  uint8 myNumber = 5;
}

pragma solidity ^0.8.0;
contract MyContract {
  uint[101] public testNumbers;
  uint[101] memory public testNumbers2;
  uint[101] public testNumbers3;
}

pragma solidity ^0.8.0;
contract MyContract {
  bytes32 public myVariable;
}

pragma solidity ^0.8.0;
contract MyContract {
  bool public myVariable;
}

pragma solidity ^0.8.0;
contract MyContract {
  byte public myVariable;
}

pragma solidity ^0.8.0;
contract MyContract {
  uint256 public myVariable;
  uint8 public myVariable8;
}

pragma solidity ^0.8.0;
contract MyContract {
  address public myVariable;
}

pragma solidity ^0.8.0;
contract MyContract {
  address public myVariable;
  function setMyVariable(address variableAddress) internal{
    myVariable = variableAddress;
  }
}

pragma solidity ^0.8.0;
contract ArrayContract {
  uint[10] public arrayWithNonFixedInitialSize;
  uint8 public myNumber;
}



contract ArrayContract {
  uint[10] public[10] public arrayWithFixedInitialSize;
  uint8 public myNumber;
}
contract AddressContract {
  address public myVariable;
}
contract MutateContract {
  uint[10] public variable;
  function mutateTest(uint index, uint newNumber) public {
    variable[index] = newNumber;
  }
}
contract MutateContract2 {
  uint[10] public variable;
  function mutateTest(uint index, uint newNumber) public {
    variable[index] += newNumber;
  }
}
contract MutateContract3 {
  uint public variable = 5;
  function mutateTest(uint index, uint newNumber) public {
    variable += newNumber;
  }

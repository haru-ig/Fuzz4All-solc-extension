pragma solidity ^0.8.0;
contract Mutator {
  uint256 public fallbackFunctionReturnValue;
  constructor() payable {
  }
  payable fallback() external payable {
    require(msg.value == 1 ether, "Invalid amount");
    fallbackFunctionReturnValue = 1000 * 1000;
    throw Error();
  }
}

pragma solidity ^0.8.0;
contract Caller {
  Mutator public contractA;
  Mutator public contractB;
  uint256 public expectedReturnValue;
  constructor() payable {
    contractA = new Mutator();
  }
  receive() external payable {
    requiredReturnValue(contractA.fallbackFunctionReturnValue);
  }
  function requiredReturnValue(uint256 value) public {
    expectedReturnValue = value;
  }
}

pragma solidity ^0.8.0;
contract ContractA {
  Mutator public contractB;
  uint256 public contractBReturnValue;
  constructor() payable {
    contractB = new Mutator();
  }
}

pragma solidity ^0.8.0;
contract TestA {
  constructor() {}
  contract A is ContractA {
    constructor() public {
      require(fallback.value == 1 ether, "Call result wrong");
    }
    fallback() external payable {}
  }
}

pragma solidity ^0.8.0;
contract TestA {
  uint256 public contract2ReturnValue;
  constructor() {
  }
  receive() external payable {
    contract2ReturnValue = 1 ether;
    throw Error();
  }
  function fallback() external {
    requiredReturnValue(contract2ReturnValue);
  }
  function requiredReturnValue(uint256 value) public {
    assert(0);
  }
}

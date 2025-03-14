pragma solidity ^0.8.0;
contract MovedCaller is Caller {
  function callContract(address contractAddress) public payable {
    contractAddress.call.value(msg.value)("");
  }
}

pragma solidity ^0.8.0;
contract Contract16 {
  function add(uint a, uint b) public pure returns (uint) {
    return a + b;
  }
}

pragma solidity ^0.8.0;

contract CallerExample {
  function call() public {
    Contract16.add.value(msg.value)(1, 2);
  }
  function getReturn() public view returns (uint add) {
    add = add(1, 2);
  }
}

pragma solidity ^0.8.0;

contract Contract17 {
  function getMigratedCaller() public view returns (address) {
    return address(MigCaller);
  }
}
contract MigCaller is Contract17, Caller {
  receive() external payable {

  }
}


pragma solidity ^0.8.0;
contract MigratedContract18 {
    constructor() {

    fallback() External payable {}
    fallback() external payable payable {}
    }
}

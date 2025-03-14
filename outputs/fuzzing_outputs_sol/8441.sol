pragma solidity ^0.8.0;
contract CallerExample2 {
  function callerReturnFalse() public pure returns(bool) {
    return false;
  }
}

pragma solidity ^0.8.0;
contract CallerExample3 {
  function callAndThrow() public pure returns(bytes memory) {
    return gas();
  }
}

pragma solidity ^0.8.0;
contract CallerExample4 {
  receive() external payable {}
  function() external pure payable {
    throw CallerExample3.callAndThrow();
  }
}

pragma solidity ^0.8.0;
contract Example {
  function exampleMethod() public view returns(uint256);
}

pragma solidity ^0.8.0;
contract Example2 {
  function exampleMethod() public view returns(uint256) {
    return Example(address(this)).exampleMethod();
  }
}

pragma solidity ^0.8.0;
contract Example2Example {
  function exampleMethod() public view returns(uint256) {
    uint256 x = Example2().exampleMethod();
    uint256 k = Example2().exampleMethod() + 1;
    uint256 z = Example2().exampleMethod() + x;
    return x + k + z;
  }
}

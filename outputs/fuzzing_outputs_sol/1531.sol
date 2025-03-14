pragma solidity ^0.8.0;
contract Test {
  constructor() {}
  receive () {
    semanticMutation();
  }

  function semanticMutation() public { }
}

pragma solidity ^0.8.0;
contract FallbackExample {
  constructor() public {
    address _contract = address(this);
    uint _amount = 200000 ether;
    testFallback(Address.sendValueSync(_contract, _amount));
  }


  function testFallback(address _contract) public returns (address) {
    Test t;
    t.semanticMutation();

    return t.testFallback(_contract);
  }


  function testFallback2(address _contract) public returns (address) {
    return address(t);
  }
}

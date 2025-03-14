pragma solidity ^0.8.0;
contract Example3 is Example4 {
}




pragma solidity ^0.8.0;
contract Caller {
  Contract example = InterfaceCaller.factory(800, 100);
  fallback() payable public {
    example.function1();
    example.function2();
  }
}
contract InterfaceCaller {
  Contract self;
  mapping (address => bool) public mappings;
  function factory(uint _selfAddress, uint _value) public {
    self = Contract(uint256(_selfAddress));
  }
  function function1() public {
    mappings[self] = true;
  }
  function function2() public {
    mappings[self] = true;
  }
}

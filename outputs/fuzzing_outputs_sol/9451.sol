pragma solidity ^0.8.0;
contract ContractWithFallback10 is ContractWithFallback9 {
  function modify(uint x) public {
    revert();
  }
}


pragma solidity ^0.8.0;
contract Example {
  function contractWithFallback() public pure {
      (address _contract, error) _result = address(uint(-1));
      (, int) = (address(_result.value)(), 5);
      _result = contractWithFallback10();
      (, int) = (address(_result.value)(), 5);
    }
}

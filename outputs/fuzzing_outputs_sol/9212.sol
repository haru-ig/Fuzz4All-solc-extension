pragma solidity ^0.8.0;
contract MutatedCaller {
  constructor () {}
  fallback () payable external {
    revert();
  }
  function mutator (address _caller, uint256 _amount) public {
    _caller.transfer(_amount);
  }
}

pragma solidity ^0.8.0;
contract OnlyFallbackContract{
  fallback () payable external {
    revert();
  }
}

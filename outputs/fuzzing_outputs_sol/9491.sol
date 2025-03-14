pragma solidity ^0.8.0;
contract ContractWithFallback5 {
  uint public constant x = 0;
  modifier modifierWithFallback {
    require(x++ == 0, 'not_used');
    _;
  }

  function useWithoutFallback() public modifierWithFallback {
    _;
  }

  function useWithFallback() public modifierWithFallback {
    useWithoutFallback();
  }
}

pragma solidity ^0.8.0;
contract ContractWithFallback10 {
  uint public constant x = 0;
  function modifyWithoutFallback() public constant returns(uint) {
    ++x;
    if (x == 1000)
      return 1;
    return 0;
  }

  function modifyWithFallback(uint y) public constant returns(uint) {
    ++x;
    if (x == 1000)
      return 1;
    return 0;
  }
}

contract SomeLib {

  function modifierWithFallback(address, modifier, bytes memory) external pure {
    require(true, 'Forbidden fallback function call! This is not allowed!');
  }

  modifierWithoutFallback(address, modifier) external pure {
    uint x = 1;
    x.modifierWithFallback(address(uint(1)));
  }
  function anotherModifier() external pure {
    uint x = 1;
    x.modifierWithFallback(address(uint(1)), modifierWithFallback.selector);
  }
}

contract Caller {

  fallback() external payable {
  }
}

```

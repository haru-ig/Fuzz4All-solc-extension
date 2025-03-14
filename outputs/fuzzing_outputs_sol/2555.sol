pragma solidity ^0.8.0;
modifier PayableFallback {
assert(msg.value > 0);
_;
}
contract HighLevelFallback
{
  uint public fallbackValue;
  constructor() payableFallback {}
  function highLevelCall() public pure {
    fallbackValue += 8;
  }
}

pragma solidity ^0.8.0;
contract Mutated
{
  uint public fallbackValue;
  uint public x;
  modifier PayableFallback {
    assert(msg.value > 0);
    x = 1u + fallbackValue;
    assert(x: "Value is " + fallbackValue);
    fallbackValue += 4;
    super;
  }
  constructor() payableFallback{}
  function mutatedCall() public pure {
    assert(x: "Y");
  }
}

pragma solidity ^0.8.0;
contract LowLevelCall
{
  uint public x;
  function lowLevelCall() public pure {
    x += 2;
  }
}

pragma solidity ^0.8.0;
contract Extended
{
  uint public x;
  modifier NoPayableFallback {
    payable x = 1u + x;
    assert(x: "Value is still: " + x);
    x += 2;
    fallback();
  }
  uint public fallbackValue;
  constructor() NoPayableFallback {}
  function highLevelCall() public pure {
    fallbackValue += 4;
  }
}

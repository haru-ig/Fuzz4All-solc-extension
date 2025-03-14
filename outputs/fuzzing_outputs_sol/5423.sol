pragma solidity ^0.8.0;
contract mutatedfallback
{
    function f() public pure returns (uint)
    {
        return 0;
    }
}
contract mutatedfallback {
  function f() public pure
    returns (uint)
  {
    return 3;
  }
}

```

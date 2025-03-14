pragma solidity ^0.8.0;
contract callsemantic_mut is fallbacksemantic_mut
{
    fallbacksemantic_mut f = fallbacksemantic_mut(address(this));
    function f(bytes memory a) public pure returns(uint256)
    {
        f.f(a);
        return (1);
    }
}
```

Check [this article](https:

## Links:

[Official guide](https:

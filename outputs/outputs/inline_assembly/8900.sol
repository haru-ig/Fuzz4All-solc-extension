pragma solidity ^0.8.0;
library InlineAssemblyLibrary
{
    uint internal x;
    constructor() public
        {
        x = 4294967290;
    }
    function test() public
        {
        set(x >> x >> x >> x >> x >> x >> x >> x >> x);
        set(x >> x >> x >> x >> x >> x >> x >> x >> x >> x);
        set(x >> x >> x >> x >> x >> x >> x >> x >> x >> x);
        set(x >> x >> x >> x >> x >> x >> x >> x >> x >> x);
        set(x >> x >> x >> x >> x >> x >> x >> x >> x >> x);
        set(x >> x >> x >> x >> x >> x >> x >> x >> x >> x);
        set(x >> x >> x >> x >> x >> x >> x >> x >> x >> x);
    }
    function set(uint256 _x) public {
        x = _x;
    }
}

pragma solidity ^0.8.0;
contract EasierGood_OptimizationallyCorrect
{
    uint internal x;
    constructor() public
    {
        x = 4294967290;
    }
    function test() public
    {
        x >>= x >> x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x >> x;
    }
    function set(uint256 _x) public {
        x = _x;
    }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentTo_Original
{
    uint internal x;
    constructor() public
    {
        x = 4294967290;
    }
    function test() public
    {
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
    }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentTo_Correct
{
    uint internal x;
    constructor() public
    {
        x = 4294967290;
    }
    function test() public
    {
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
    }
    function set(uint256 _x) public {
        x = _x;
    }
}

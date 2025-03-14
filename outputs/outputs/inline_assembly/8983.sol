pragma solidity ^0.8.0;
const ONE = 1;
contract EquivalentSolidity5
{
    struct X
    {
        uint256 x;
    }
    constructor() public {
    }
    function get(X memory a) public pure returns(X memory)
    {
        return a;
    }
    function test() public
    {
        X memory a;
        a.x = get(X(ZERO)).x;
    }
}

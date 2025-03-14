pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Mutate0
{
    uint256 private _a;
    uint256 _b;
    mutable uint256 _x;
    constructor()
    {
        _a = 42;
        _b = 10;
    }
    function mutateX() internal
    {
        _x = (uint256)(_a/(_a*_a+1));
        _a /= 4;
    }
    modifier x_modifier(_)
    {
        mutateX();
        _;
    }

    function()
    {
        _x = (uint256)(_a/_a);
        _a /= 2;
    }
}

pragma solidity ^0.8.0;
contract MutatedSolidity5
{
    struct X
    {
        uint256 x;
    }
    uint256 private _x;
    constructor() public
    {
        _x = _a / 3;
    }
    function divide() public pure returns(X memory)
    {
        return X(4);
    }
}

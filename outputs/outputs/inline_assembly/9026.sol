pragma solidity ^0.8.0;
contract MutatedSolidity7
{
    struct X
    {
        uint256 x;
    }
    uint256 public _data1;
    uint256 public _data2;
    uint256 public _data3;
    uint256 public _data4;
    constructor() public
    {
        _data1 = 1;
        _data2 = 2;
        _data3 = 3;
        _data4 = 4;
    }
    function add() public payable pure returns(X memory)
    {
        return X(2);
    }
    function mul() public pure returns(X memory)
    {
        return X(3);
    }
    function sub() public pure returns(X memory)
    {
        return X(4);
    }
}

pragma solidity ^0.8.0;
contract Solidity4
{
    uint256 public _value;
    function add() public pure
    {
        _value = 0;
        _value++;
    }
    function mul() public pure returns(X memory)
    {
        return add();
    }
}

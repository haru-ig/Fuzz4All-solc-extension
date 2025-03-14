pragma solidity ^0.8.0;
contract Modify
{
    uint public value;

    function ModifyInt(uint a, uint b) public
    {
        value = Add.AddInt(value,b);
    }

    function GetUint() public pure returns(uint)
    {
        return value;
    }
}

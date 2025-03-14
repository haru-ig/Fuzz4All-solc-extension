pragma solidity ^0.8.0;
library Storage
{


    function write() internal {}
}

pragma solidity ^0.8.0;
contract Test
{




    function simple_math_add(uint a, uint b)
    public pure returns (uint)
    {
        return a + b;
    }


    function simple_math_sub(uint a, uint b)
    public pure returns (uint)
    {
        return a - b;
    }




    function (uint) public { }
    function () public payable { }




    function () public payable {}
}
contract Caller
{
    function () public payable
    {
        storage[msg.sender + ",0"] = true;
    }



    mapping (address => bool) storage storage;
}

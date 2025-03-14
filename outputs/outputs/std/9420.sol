pragma solidity ^0.8.0;
contract Revert
{
    function() external
    {
        throw;
    }
}

pragma solidity ^0.8.0;
contract Assign
{
    uint[] public a;
    function modify() public
    {
        a[0]=5;
    }
}

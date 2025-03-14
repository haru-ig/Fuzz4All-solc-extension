pragma solidity ^0.8.0;
contract test5
{
    address[] internal x = new address[](21);
    function() public { x[20] -= 1; }
}

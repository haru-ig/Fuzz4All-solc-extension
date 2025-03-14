pragma solidity ^0.8.0;
contract Caller
{
    mapping(address => bool) public dummy;
    function call(address c) public {
        require(dummy[c], "!=0");
    }
}

pragma solidity ^0.8.0;
contract Caller
{
    mapping(address => bool) public user;
    function call(address c) public {
        user[c] = true;
    }
}

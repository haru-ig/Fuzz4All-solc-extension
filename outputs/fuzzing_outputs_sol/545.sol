pragma solidity ^0.8.0;
contract Caller
{
    address[] public addresses;
    constructor()
    {
        addresses.push(this);

        addresses.push(address(this));

    }

    function call() public payable
    {

    }
}

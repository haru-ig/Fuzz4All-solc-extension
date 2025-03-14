pragma solidity ^0.8.0;

contract NotANonExistentInterface { }

contract Equivalent
{

    constructor() public { }

    receive () external payable { }
}

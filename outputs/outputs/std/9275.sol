pragma solidity ^0.8.0;
contract Mutated
{
    address[] public immutable publicAddresses;

    modifier addAddress(address a) {
        publicAddresses.push(a);
        _;
    }
    constructor()
        addAddress(address(uint256(2)))
    {

    }
```

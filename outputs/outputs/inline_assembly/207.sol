pragma solidity ^0.8.0;
contract E7H1
{
    mapping(msg.sender => uint) public amountsOfAddresses;
    function getAmountOfAddress(address) public view returns (uint) {
        return amountsOfAddresses[msg.sender];
    }
    function buy(uint amount) public returns (uint)
    {
        amountsOfAddresses[msg.sender] += amount;
        return amountsOfAddresses[msg.sender];
    }
}

```

## Useful links

1. [Solidity Tutorial](https:
1. [Solidity Developer Center](https:
1. [Solidity Wiki](https:
   * [Examples](https:
   * [Solidity-by-Example](https:
1. [Solidity - Solidity and EVM](https:
1. [Why you shouldn't be scared of Solidity](https:

pragma solidity ^0.8.0;
contract M7 {
    uint b;
    constructor() {
        b = 1;
    }
    function divide(uint x) public {
        uint _b = b/(x-2)*x;
        b = b-2*_b;
    }
    function modify(uint x) public {
        uint _b = 2*_b;
        b=b+_b-_b-2*x-_b*_b;
    }
}

```

# Fee

## Miner's fee
- 10% + 20% + 40% + gas price 0 gas = 0.5 ETH for the mining pool
- Fee for new mined blocks = 1 gas * (10% + 20% + 40%)
- Miners must have 55 USD gas to start mining

## Miner's fee for 2 pools, 100% (40% + 10% + 20%) = 300 ETH

## Miner's fee for 4 pools, 20% + 25% = 55 ETH

## Gas price for mining a block = 100% - (10% + 20%) - (25%)

# Gas

## What gas is

- Gas = number of cycles (loops) * cycle (seconds) * price of gas
- Total gas cost = G = Q / H
- Where Q = Gastake
- Where H = 1500000 gas = 150 Ether * 1500000 = 100000000 gas

## How to understand gas cost vs Eth cost?

- gascost/ethercost = 100000 = 1000000 ether * 100 = 1000000000000
- gascost = Gastake * EtherCost

## When gas-cost is too high
 - Malicious parties can send small amounts of gas to attack the chain with high gas-cost

## What the price of gas is?

- 10-20% = 95-105 Ether

- 1k usd = 100 usd

# Gas limit:
- 10^16 = 1 million
- 10^0 = 1000000000 = 10 Ether
- 10

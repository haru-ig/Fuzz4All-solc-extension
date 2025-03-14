pragma solidity ^0.8.0;
contract UintWrapper {
    uint constant X = 0;
    uint160 constant Y = 1;
    function x() pure public returns (uint) {
        unchecked {
            uint x = uint256(uint256(X) * UintWrapper.x()) / X;
            uint y = (uint256(uint256(Y) * UintWrapper.x()) / Y) << 1;
            return ((uint160(x * UintWrapper.x()) << 1) | (uint160(y * UintWrapper.x()))) >> 21;
        }
    }
}
```

## 2019.4.0

This release adds new versions of the Ganache core contracts.

When upgrading, ensure that you also update your `package.json` file with the new versions. For example, to upgrade your `truffle.js` file to use the `developments` branch, replace the following code:

```
...
    "ganache": "^6.2.3",
...
```

With the following code:

```
...
    "ganache": "developments",
...
```

The contracts available in Ganache release 2, 3 and 4 include the mainnet, developmental, test, testnet1 and testnet4 networks with the following details:

|Network|Name|Description
|-|-|-
|mainnet|"mainnet-alpha.json"|The main network with 13 384 MBit of gas. In addition to the contracts deployed on the main net, all accounts on this network have had keys sent to them. This network is used for the Ethereum mainnet on the 3/7/14 block.|
|development|"mainnet.json"|A developmental network that simulates transactions from the Ethash pool. In addition to the contracts deployed on the main net, all accounts on this network have had keys sent to them. This network is used for the Ethereum testnet on the 3/7/14 block.|
|testnet1|"truffle-config.js"|The test network with 2 480 MBit of gas. This network is very similar to the mainnet, but limited to 50% of transactions. Gas is divided equally between all the contracts and one is used to pay gas fees.|
|testnet4|"testnet4.json"|The Ropsten network with 4 016 MBit of gas. This network is similar to the mainnet, but limited to 1% of transactions.|

To upgrade to a later release, simply execute the following commands:

```bash
truffle develop --network mainnet-alpha
truffle develop

pragma solidity ^0.8.0;
contract Mutator4 {
    uint public i;
    constructor () public {
        i += -0xffffffffffffffffff;
    }
}
```

**IMPORTANT NOTE:** The above program cannot compile because of some unusual and unexpected bugs. If you encounter this problem in a different solidity program, please send it for analysis.

</br>

<a name="mutator2"></a>

## Mutation testing

```
# Run on multiple networks
$ truffle test --network testnet1 test

# Or on a specific network
$ truffle test --network testnet1 --variant="mutator_v2" test
  ✓ Mutator1 (1061ms)
● Mutator2
  Uncaught Error: VM Exception while processing transaction: error: INVALID_OPERATION: Cannot multiply token amounts by non-token amount
    at Object.Module._invalidOP (/usr/lib/node_modules/truffle/build/webpack:/node_modules/ethereumjs-vm/lib/index.js:742:19)
    at /usr/lib/node_modules/truffle/build/webpack:/node_modules/ethereumjs-vm/lib/index.js:746:22
    at Array.map (<anonymous>)
    at EthereumVM.<anonymous> (/usr/lib/node_modules/truffle/build/webpack:/node_modules/ethereumjs-vm/lib/index.js:744:40)
    at /usr/lib/node_modules/truffle/build/webpack:/node_modules/ethereumjs-vm/lib/index.js:804:9
    at Array.map (<anonymous>)
    at EthereumVM.<anonymous> (/usr/lib/node_modules/truffle/build/webpack:/node_modules/ethereumjs-vm/lib/index.js:776:50)
    at /usr/lib/node_modules/truffle/build/webpack:/node_modules/ethereumjs-vm/lib/util/transaction.js:123:14
    at Array.some (<anonymous>)
    at EthereumVM.toContractFunctionCall (/usr/lib/node_modules/truffle/build/webpack:/node_modules/ethereumjs-vm/lib/util/transaction.js:122:39)
    at EthereumVM._next (/usr/lib/node_modules/truffle/build/webpack:/node_modules/ethereumjs-vm/lib/index.js:73:54)
    at EthereumVM._process (/usr/lib/node_modules/truffle/build/webpack:/node_modules/ethereumjs-vm/lib/index.js:75:22)
    at Ethereum._process (/usr/lib/node_modules/truffle/build/webpack:/node_modules/ethereumjs/node/blockchain.js:339:16)
    at Ethereum.next (/usr/lib/node_modules/tr

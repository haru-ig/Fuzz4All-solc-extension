pragma solidity ^0.8.0;
contract Mutations {
    address owner_of_address_return_type();
    function setBalanceReturnAddressType() internal {
        owner_of_address_return_type();
    }
}

 <fim_middle>contract MutatedMutations {
    constructor (uint256 x) {
        setBalanceReturnAddressType();
        x;
        x = 0;
        setBalanceReturnAddressType();
    }
}
```

## Testnet deployment

> Please note that the testnet deployment step require [a separate setup](./testnet_setup_instructions.md) to do as part of the [deployment](https:
>
> Deploy a contracts to the public test chain `0xea4b65c9348e8ef540d9df98eabd14bd8364cb80`

To run a Solidity contract test (on chain `0xea4b65c9348e8ef540d9df98eabd14bd8364cb80`) with the latest Solidity release, you need the latest Solidity compilation tools. You can find them [at the official official solidity website](http:

For development, you need the latest version of both solc-js and solc. You can find them [on the official solcjs repository](https:

Solidity 0.7.1 does not support the newest compiler version yet. As a temporary workaround for Solidity 0.7.1, you can [fork the Solidity repository to use the older compiler versions](https:

Here is an example of how to do it to test a Solidity contract on the test net:
```bash

pragma solidity ^0.8.0;
contract SolidityAssemblyExample {
    uint public constant a = 10;
    function increment() public {
        a++;
    }
}

pragma solidity ^0.8.0;
contract SolidityAssemblyExample {
    function increment() public {
      d <<= 16;
    }
}

```
</br><br>

## Step 5: Testing the Deployment of the Contract and its Function(s)
In this step, you will create a contract and compile it using the `eth_compileSolidity` Ethereum RPC interface function. After that, you will use the `eth_call` function in Solidity to call the `increment` function of the `Incrementer` contract in a way that triggers the `increment` transaction in the blockchain. Finally, you will use the `eth_getCode` and `eth_getTransactionCount` Ethereum RPC interface functions to make sure that the new function of both the contract and the transaction can successfully execute.

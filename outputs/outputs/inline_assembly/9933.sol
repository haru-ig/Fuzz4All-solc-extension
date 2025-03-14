pragma solidity ^0.8.0;
contract C {
    uint256 public value;
    uint256 public value2;
    constructor() {
        value = 4;
        value2 = value;
    }
    function test(uint256 v) public {
        uint256 x = 6;
        value = v;
        value2 = value;
    }
}
```

## Step 6: Test
If you completed the example, you can click to run the contract [Test.sol](Test.sol)

## Step 7: Check the EVM logs
After the contract is deployed and running, try submitting transactions! A successful submission will display the VM's internal state after each deployment, as well as displaying relevant logs. The compiler will automatically generate EVM code which will run in a non-EVM environment.

```
solc --version


solc --version
Solidity compiler version: 0.8.11+commit.7049be75.Linux.g++

solc --version
Solidity compiler version: 0.8.11+commit.49c088e7.Linux.g++

solc -o Test.bin Test.sol
```

The output from `solc --version` should look like this:

![solidity compiler version](./EVM_Compile.png)

Now you can click "Run in EVM" to test the contract on a live node.

## Step 8: Check the Blockchain
Now that the contract is deployed and running on a live node, connect to the EVM.

Connect to the Network

![blockchain connected](./EVM_Network.png)

View contracts deployed

![contracts deployed](./EVM_Contracts.png)

View logs from Contract Function

![contract events](./EVM_Events.png)

## Step 9: Ethplorer
You can also interact with blocks directly in your browser. This is particularly helpful when interacting with contracts on a live node.

Launch Ethplorer

![ethplorer launched](./EVM_Etherscan.png)

Create a new transaction (0x39112233445566776655aaabb2244332266cdde) and submit it.

![ethplorer tx](./EVM_EtherscanTX.png)

You can click to view more information about the transaction: data, value, nonce, etc.

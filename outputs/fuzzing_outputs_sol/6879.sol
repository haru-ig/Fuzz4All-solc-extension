pragma solidity ^0.8.0;
<fim_middle>contract Fallback {
    function fallback() public {
    }
}
contract LongRunning {
    receive() external {
    }
}
"{"inputs":[{"internalType":"address","name":"","type":"address"}],"payable":true,"stateMutability":"nonpayable","type":"constructor"},{"inputs":[{"internalType":"address","name":"","type":"address"},],"payable":false,"stateMutability":"payable","type":"fallback"}]

```

## Compile

```javascript
// const Contract = require('./HelloWorld.json');
const Contract = JSON.parse(fs.readFileSync("./HelloWorld.json").toString());

await Contract.deployed();
const tx = await Contract.hello("World");
console.log(tx.transactionHash);

// OR
const Contract = require('./HelloWorld.sol');
const Contract = new Contract.Contract(process.args[2]);

await Contract.deployed();
const tx = await Contract.hello("World");
console.log(tx.transactionHash);

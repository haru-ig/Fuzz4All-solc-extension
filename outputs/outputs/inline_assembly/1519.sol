pragma solidity ^0.8.0;
contract Mutant {
  uint256 x;
  address a;
  uint256 a_;
  uint256 y;
  uint256 c;
  uint256 xprev;
  uint256 d;
  uint256 t;
  uint256 xprev1;
  uint256 c_init;
  constructor (uint256 t, uint256 c, uint256 d, uint256 xprev) public {
    y = 2*10 + c;
    x = y;
    c_init = c;
    a = msg.sender;
    a_ = y - y;
    xprev = x;
    d = d;
    t = t;
  }
}
```

# 3. Advanced Applications (Web3.js)

## 3.1 Web3.js Interacting With Smart Contracts

1. The `web3` library in Solidity makes interacting with smart contracts on the Ethereum blockchain more accessible. Instead of calling the `initialize` function, which initializes the contract parameters and state (variables), a JavaScript instance is created and injected into the page, to gain access to the web3 instance object. Inside `window`, web3 is created by the Ethereum Wallet API. In the example below, the web3 instance is created by calling `new web3()` in `Web3` constructor.

```

let web3 = new Web3(new Web3.providers.HttpProvider( 'https://ropsten.infura.io' ),
  {cacheBlockPolling: true, cacheTransactions: true, timeoutBlocks: 20}
);
```

2. The web3 instance exposes methods that enable users to read and modify a smart contract's state. In the example below, the user can call `readStorage` function to see the current Ethereum address contract is deployed to. The result of this function is the current address that is stored in variable `addr`. The same is achieved by using method `.eth.getAddress()` which is the web3 method for accessing

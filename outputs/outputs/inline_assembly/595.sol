pragma solidity ^0.8.0;
```

[Click me](https:

## 4.2.11.3.3 Call-to-Smart contract
When you want to call another contract, using [contract calls](https:
```sol
pragma solidity ^0.8.0;
contract SimpleLibrary {
    function add(uint _a, uint _b) public pure returns (uint result) {
        return _a + _b;
    }
}
contract SimpleSmartContract {
    using SimpleLibrary for address;
    function add(address s1, address s2) public pure returns (uint128){
        return s1.call.value(0)(abi.encodeWithSignature("add(uint256,uint)", s1.value, s2.value));
    }
}
```
When testing a contract through a call, any value sent to the contract is still sent to the contract's method when it executes, and the contract is not affected by the test.
```sol
pragma solidity ^0.8.0;
contract SimpleSmartContract {
    function add(uint _a, uint _b) public pure returns (uint){
        // Note that values are sent through an external method, and the test function has no effect on them.
    }
}
```
When contract calls are made through a [function call](https://docs.soliditylang.org/en/v0.8.9/solidity-by-example.html#Function-Calls), the smart contract is directly executed (without going through the call function), and any value sent to the contract is sent to the contract's method.
```sol
pragma solidity ^0.8.0;
contract SimpleSmartContract {
    function subtract(uint _a, uint _b) public pure returns (uint){
        return sub(_a, _b);
    }
}
```
```bash

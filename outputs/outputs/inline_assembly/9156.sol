pragma solidity ^0.8.0;
contract C{
    function getResult(uint x, uint y) public view returns (uint) {
        x = x > 100? x * 100 + 10 / 10: x;
        return (x);
    }
}
```
* The above code is a good example of how to use and modify inline assembly for your smart contract.

* In next chapter, we'll be looking at deploying new smart contracts from Truffle which use inline assembly in the compiler’s default behavior.

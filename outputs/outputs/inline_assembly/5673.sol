pragma solidity ^0.8.0;
contract InlineMutatedBlock9Mutator4 {
    function test() public returns(uint) {
        uint x = 1;
        x += 1;
        return x;
    }
}
```

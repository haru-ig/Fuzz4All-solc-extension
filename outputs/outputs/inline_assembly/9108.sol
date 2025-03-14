pragma solidity ^0.8.0;
contract Mutator {
    uint private a;
    function mutate() public virtual {
        a = a * 2;
    }
}
contract IntraGenMutator is Mutator {
    function mutate() public override {
        uint x = a;
        x = a + 1;
    }
}
```

Output:
```
Address: 0xb97e05cb68247d00a7c8d11060a6317b27ac11c1
Balance: 2 GAS

Address: 0xb97e05cb68247d00a7c8d11060a6317b27ac11c1
Balance: 3 GAS
a = 0
```
[Back to the first chapter](02.0-solidity-fundamentals.md)

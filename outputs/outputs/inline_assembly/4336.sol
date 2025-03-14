pragma solidity ^0.8.0;
contract MutatedSolidityAssemblyExample {
    IMutatedSolidityAssemblyExample public i;
    constructor() public {
        i = IMutatedSolidityAssemblyExample(0x137);
        i.a(a);
    }
    uint a;
}<fim_middle>contract MutatedSolidityAssemblyMutatedExample {
    IMutatedSolidityAssemblyExample public i;
    uint a;
    constructor(uint X) public {
        i = IMutatedSolidityAssemblyExample(0x137);
        a += X;
    }
    function mutate() public {
        i.a(a);
    }
}
```

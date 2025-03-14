pragma solidity ^0.8.0;
contract MutatedSolidityAssemblyExample {
    IMutatedSolidityAssemblyExample[] public examples;

    constructor() public {
        examples.push(new IMutatedSolidityAssemblyExample());
        examples.push(new IMutatedSolidityAssemblyExample());
    }
    function setAddressExample(uint i, address a) public {
        examples[i-1].a(a);
    }
    function a() public {
        uint temp = examples[0].a(2);
        uint temp2 = examples[1].a(2);
    }
}
```

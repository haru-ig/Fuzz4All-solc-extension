pragma solidity ^0.8.0;
contract SimpleInlineAssemblyExample {
    function main() public {
        int x = 10;
        assembly{
        x := 20
        }
    }
}
```
---
All the contracts have been provided in this [link](https:

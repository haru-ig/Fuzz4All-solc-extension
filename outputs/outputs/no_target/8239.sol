pragma solidity ^0.8.0;
contract Mutated2b {
    mapping(address => uint) map;
}

pragma solidity ^0.8.0;


contract Mutated3b is Mutated2b{}
```

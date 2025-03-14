pragma solidity ^0.8.0;

contract SemanticYulContract2 {
    mapping(uint => uint) public counter;

    function modify() internal {
        counter[999983] = counter[999983] * 3;
    }
}
```

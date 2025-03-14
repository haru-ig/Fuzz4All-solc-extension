pragma solidity ^0.8.0;
contract NotMutators22SemanticallyEquivalentMutated {
    uint public a;
    uint public b;
    mapping (address => uint) public c;
    constructor (uint Z) public {
        c[msg.sender] = Z;
        b = Z * 3;
        a = b;
    }
    function increment() public returns (uint) {
        return (a + 4);
    }
    function update() public {
        a = c[msg.sender];
        delete c[msg.sender];
    }
}
```
---

## Next

[[Solidity Basics]]

[[Solidity Advanced]]

[[Solidity Advanced II]]

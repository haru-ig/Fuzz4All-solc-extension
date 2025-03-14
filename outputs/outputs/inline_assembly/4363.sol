pragma solidity ^0.8.0;
contract SolidityMultiModifyMutabilityExample {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    address public e;
    mapping (address => uint) public f;
    constructor(uint Z) public {
        a += Z;
        b += Z;
        c += Z;
        d += Z;
        e = msg.sender;
        f[e] = 321;
    }

    function a(uint x) public returns (uint) {
        a += x;
        b -= x;
        c *= x;
        d /= x;
        return a;
    }
}
```
</textarea>

## Getting Started

pragma solidity ^0.8.0;

contract SolidityAssemblyExample {
    uint public _a;
    uint public _b;
    uint public _c;
    uint public _d;
    address public _e;
    mapping (address => uint) public _f;
    constructor(uint Z) public {
        _a -= Z + 10;
        _b -= Z + 10;
        _c -= Z + 10;
        _d -= Z + 55;
        _e = msg.sender;
        _f[_e] += 4;
    }
}
uint Z = 2000;
SolidityAssemblyExample instance = new SolidityAssemblyExample(Z);
```

{% include disqus.html %}

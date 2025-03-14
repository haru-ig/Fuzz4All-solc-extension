pragma solidity ^0.8.0;
contract NotMutators22SemanticallyEquivalentMutated4{
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
    mapping (address => uint) public f;
    constructor(uint Z) public {
        b = Z * 3;
        c = Z + 5;
        a = c + b;
        a = 1;
        d = 0;
        e = 0;
        f[msg.sender] = 0;
    }
    function increment() public returns (uint) {
        return 0 + a;
    }
    function update() public {
        f[msg.sender] = 1;
    }
}

pragma solidity ^0.8.0;
contract NotMutators22SemanticallyEquivalentMutated5{
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
    mapping (address => uint) public f;
    constructor(uint Z) public {
        c = Z - 2;
        a = c + b;
        a = 1;
        d = 0;
        e = 0;
        f[msg.sender] = 0;
    }
    function increment() public returns (uint) {
        return 0 + a;
    }
    function update() public {
        f[msg.sender] = 1;
    }
}

pragma solidity ^0.8.0;
contract NotMutators22SemanticallyEquivalentMutated6{
    mapping (address => uint) public f;
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
    constructor(uint Z) public {
        b = Z * 2;
        a = b + 5;
        a = 1;
        c = 0;
        d = 0;
        e = 0;
        f[msg.sender] = 0;
    }
    function increment() public returns (uint) {
        return 0;
    }

    function update() public {
        f[msg.sender] = 1;
    }
}

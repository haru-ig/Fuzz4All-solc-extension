pragma solidity ^0.8.0;
contract NotMutators22SemanticallyEquivalentMutated2 {
    uint public a;
    uint public b;
    mapping (address => uint) public c;
    constructor (uint Z) public {
        b = Z * 3;
        a = b;
    }
    function increment() public returns (uint) {
        return (a + 4);
    }
    function update() public returns (uint) {
        uint y;
        (y, c[msg.sender]) = (c[msg.sender], ++b);
        return y;
    }
}

pragma solidity ^0.8.0;
contract Mutators22SemanticallyEquivalentMutated {
    uint public a;
    uint public b;
    constructor (uint Z) public {
        a = b;
        b = Z * 3;
    }
    function increment() public returns (uint) {
        return a + b + 4;
    }
}

pragma solidity ^0.8.0;
contract NotMutators22SemanticallyEquivalentMutated5 {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
    mapping (address => uint) public f;
    constructor(uint Z) public {
        b = Z * 3;
        a = b;
        c = 0;
        d = 0;
        e = uint(blockhash(block.number - 1) > 0) - 1;
    }
    function increment() public returns (uint) {
        return (a + b + c + d + e);
    }
    function update() public {
        a = f[msg.sender];
        f[msg.sender] = 0;
    }
}

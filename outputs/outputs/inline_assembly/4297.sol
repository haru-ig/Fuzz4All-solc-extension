pragma solidity ^0.8.0;
contract NotMutators22 semanticallyEquivalentMutated_4{
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
    uint public f;
    mapping (address => uint) public g;
    constructor(uint Z) public {
        b = Z * 3;
        a = b;
        c = 0;
        d = 0;
        e = 0;
        f = 0;
        g[msg.sender] = 0;
    }
    function increment() public returns (uint) {
        return a + b + c + b;
    }
    function update() public {
        a = g[msg.sender];
    }
}

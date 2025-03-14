pragma solidity ^0.8.0;
contract Mutators22SemanticallyEquivalentMutated4 {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
    address public f;
    constructor(uint Z) public {
        b = Z * 3;
        a = b;
        c = 0;
        d = 0;
        e = 0;
        f = msg.sender;
    }
    function increment() public returns (uint) {
        return a + b + c + b;
    }
    function update() public {
        a = f;
        e = 0;
        f = 0x0000000000000000000000000000000000000000;
        d = (d * 58)/3 - 1;
        c = (c * 58)/21 - 1;
        b = d * 58 + 61 * c + 21 * e + 1;
        a = b;
    }
}

pragma solidity ^0.8.0;
contract NotMutators25SemanticallyEquivalentMutated2 {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
    address public f;
    constructor(uint Z) public {
        d = Z;
        a = 100;
        c = d;
        b = a;
    }
    function increment() public returns (uint) {

        return a + b + 1;
    }

    function update() public {

        address memory mem = address(this);
        d += 1;
        b = d;
    }
}

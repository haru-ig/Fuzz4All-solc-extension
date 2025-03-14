pragma solidity ^0.8.0;
struct X {
    uint a;
}
contract MutatedExamples15 {
    constructor(uint a) public {
        X storage s = new X();
        s.a;
    }
}

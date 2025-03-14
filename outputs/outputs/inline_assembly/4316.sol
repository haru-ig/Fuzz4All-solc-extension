pragma solidity ^0.8.0;
contract MutatingInlineAssemblyExample {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
    uint internal counter=25;
    constructor(uint Z) public {
        a += Z - 1;
        b += counter + 1;
        c += Z + 1;
        a--;
        b--;
        c--;
        d = increment(increment(2));
        e = a;
        e = increment(increment(b));
    }
    function increment(uint Y) public returns (uint) {
        counter += 3;
        return 2*Y + 1;
    }
}

pragma solidity ^0.8.0;
library Lib {
    uint[] b;
}
contract C {
    S s1;
    S s2;
    constructor() public {
        s1.a.push(s2.a);
        b = Lib.b;
        b.push(s1.a);
    }
}

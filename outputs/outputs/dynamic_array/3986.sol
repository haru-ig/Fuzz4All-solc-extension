pragma solidity ^0.8.0;
contract C {
    uint[] pub s1;
    constructor() public {
        if (s1.push(1))
            C.f(s1);
    }
}

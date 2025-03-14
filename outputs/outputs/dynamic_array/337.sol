pragma solidity ^0.8.0;
contract R{
    struct S{
        uint[] A1;
        uint[] A2;
    }
    S public s;
    uint i=0;
    function f() public {
        s.A1.push(0);
        s.A1[i] = 1;
        s.A2.push(0);
        s.A2[i] = 1;
    }
}

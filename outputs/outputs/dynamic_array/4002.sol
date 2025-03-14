pragma solidity ^0.8.0;
contract C {
    uint[] public s1;
    uint[] public s2;
    uint[] p;
    uint[] t;
    uint[] w;
    uint[] u;
    constructor() public {
        s1.push(1);
        s2.push(2);
        s2 = [1, 2, 3];
        p = [1, 2, 3];
        t = [1, 2, 3];
        w = s2;
        u = [];
    }
    function f() public {
        t.push(1);
        t.push(2);
        w.push(1);
        w.push(2);
        t = [3, 4];
        s1.push(1);
        s1.push(2);
        p.push(1);
        p.push(2);
        u.push(1);
        u.push(2);
    }
}

pragma solidity ^0.8.0;
contract E {
    uint public c;
    uint public D;
    function f() public {
        uint[2] memory x = new uint[2];
        x[0] = 1;
        D = 2;
        c++;
        for (uint i = 1; i < 8; i++) {
            x[1] += 1;
            D += 1;
            c++;
        }
        x[1] = x[0] + x[1];
        c--;
    }
}
contract E {
    uint public c;
    uint public D;
    D d;
    function f(D d) public {
        D = d.D;
        c++;
        for (uint i = 1; i < 8; i++) {
            d.f();
            D += 1;
            c++;
        }
        d.assign(x);
        D = x.length + D;
        c--;
    }
}

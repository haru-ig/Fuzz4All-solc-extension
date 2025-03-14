pragma solidity ^0.8.0;
contract G1 {
}
contract G2 {
}
contract Caller {
    function f() internal {
        C c = C();
        G1 g1 = G1();
        G2 g2 = G2();
        c.f.value(10)();
        g1.f();
        g2.f();
    }
}

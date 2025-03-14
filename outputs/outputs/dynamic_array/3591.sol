pragma solidity ^0.8.0;
contract C {
    enum E {
        F
    }
    function e() public {
        E memory e;
        e.e = E.F;
        e.e = E.F;
        e.e = E.F;
    }
}

pragma solidity ^0.8.0;
contract C {
    enum B {
        G
    }
    B[][] public _b;
    function b() public {
        _b.push([[B.G]]);
    }
}

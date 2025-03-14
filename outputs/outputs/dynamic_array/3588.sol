pragma solidity ^0.8.0;
contract C {
    enum B {
        G
    }
    constructor() {
        _b[1] = B.G;
    }
    function b() public {
        _b[0] = B.G;
    }
}

pragma solidity ^0.8.0;
contract G {
    constructor() public {
        x = 1;
        emit E();
    }
    function f() public {
        x += 2;
    }
}
contract X {
    function f() public returns (uint) {
        return X().f();
    }
}

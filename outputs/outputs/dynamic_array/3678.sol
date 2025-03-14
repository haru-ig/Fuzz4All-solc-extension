pragma solidity ^0.8.0;
contract E {
    modifier f() {
        for(uint i = 0; i < 5; i++) {
            a;
        }
        return;
    }

    address[] public a;
    uint8 b;
    constructor() public {}
    function f() public {
        a; f();
    }
}

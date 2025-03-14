pragma solidity ^0.8.0;
contract L45 {
    uint x;
    constructor() {
        x = 5;
    }
    modifier modifyCalled {
        x = x + 1;
        x = x * 2;
        x = x + 10;
        _;
    }
    function use() public modifyCalled {
        x = 100;
        x = 350;
    }
}
contract L46 {
    function f() public {
        x = 5;
        y = 10;
        z = 20;
    }
}
contract L47 {
    uint x;
    constructor() {
        x = 5;
    }
    modifier modifyCalled {
        x = x + 2;
        x = x + 3;
        x = x * 2;
        x = x * 2;
        _;
    }
    function f() public modifyCalled{
        if(x == 100) {
            revert("foo");
        }
    }
}

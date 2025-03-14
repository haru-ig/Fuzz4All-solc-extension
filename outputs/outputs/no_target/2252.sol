pragma solidity ^0.8.0;
contract mutation6 {
    uint public num;
    constructor() public {
        num = 100;
    }
    function f() public {
        num = 80;
    }
    function g() public pure {
        num = 40;
    }
    function g() pure public {
        num = 50;
    }
}
contract mutation7 {
    uint public num;
    constructor() public {
        num = 100;
    }
    function f() public {
        num = 50;
    }
    function g() public pure {
        num = 100;
    }
    function g() pure public {
        num = 200;
    }
}

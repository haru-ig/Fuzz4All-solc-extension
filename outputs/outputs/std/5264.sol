pragma solidity ^0.8.0;
contract MyContract {
    uint public myuint;
    uint public myuint1;
    constructor() {
        myuint = 5;
        myuint1 = 25;
    }
    function b() public {
        myuint += myuint1;
    }
}

contract MyContract {
    uint public myuint;
    uint private myuinta;
    constructor() {
        myuint = 56;
        myuinta = 30;
    }
    function c() public {
        myuint += myuinta;
    }
    function d() public {
        myuint = myuint + myuinta;
    }
    function a() public {
        myuinta += 31;
    }
}

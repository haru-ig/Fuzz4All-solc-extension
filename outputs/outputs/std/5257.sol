pragma solidity ^0.8.0;
contract MyContract {

    uint public myconst;
    uint myuint;

    constructor() {
        myuint = 5 * 3 + 10;
        myconst = 8;
    }

    function f() public {
        myuint = myuint * myconst + myconst;
    }
}

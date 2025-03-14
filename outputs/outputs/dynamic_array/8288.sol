pragma solidity ^0.8.0;
contract Solidity2 {
    uint public a;
    uint public b;
    constructor() public {
        a = 1;
        b = 1;
    }
    function myFunction() public {
        b = b + a + 1;
        b = b + a + a + 1;
    }
}

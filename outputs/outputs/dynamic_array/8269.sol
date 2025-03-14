pragma solidity ^0.8.0;
contract Solidity4 {
    uint public a;
    uint public b;
    constructor() public {
        a = 1;
        b = 1;
    }
    function myFunction() public {
        a = 1;
        b = a + b;
    }
}

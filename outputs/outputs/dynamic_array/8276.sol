pragma solidity ^0.8.0;
contract SemanticallyEquivalentExample {
    uint public a;
    uint public b;
    constructor() public {
    }
    function myFunction() public {
        (a, b) = (0, 1);
        (a, b) = (0, 1);
    }
}

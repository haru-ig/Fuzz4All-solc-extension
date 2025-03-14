pragma solidity ^0.8.0;
contract Solidity3 {
    uint[] public a;
    uint public b;
    constructor() public {
        a.push(0);
        a[10] = 0.5;
        a.push(0);
    }
    function myFunction() public {
        b = a[1];
        a.push(1);
        b = b + 1;
        b = b + a[1];
        b = b + 1;
    }
}

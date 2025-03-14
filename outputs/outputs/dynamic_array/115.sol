pragma solidity ^0.8.0;
contract C{
    address payable x;
    uint256[] x1;
    constructor () {
        x1.push(42);
    }
}



contract D {
    uint256[] a;
    constructor () {
        a.push(0);
        a.push( 42);
    }
}

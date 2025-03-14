pragma solidity ^0.8.0;
contract B {
    uint[] b;
    constructor () {
        b[0] = 0;
        b[1] = 1;
        b.push(2);
    }
}

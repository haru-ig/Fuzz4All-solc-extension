pragma solidity ^0.8.0;
contract B {
    bytes2[] public a;
    constructor () {
        a.push(0);
        a.push(0);
        a[3] = '123';
        a[4] = '0';
        a[2] = '0';
        a[1] = '0';
        a[0] = '0';
    }
}

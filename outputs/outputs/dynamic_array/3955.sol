pragma solidity ^0.8.0;
contract D {
    uint[] public x;
    uint[] public z;
    uint[3] public y;
    constructor (uint n) public {
        if (n == 3) {
            x = new uint[](10);
            x.push(1);
            x.push(2);
        }
        else {
            x = new uint[](0);
            x.push(1);
            x.push(2);
        }
    }
}

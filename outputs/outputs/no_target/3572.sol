pragma solidity ^0.8.0;
contract m209b {
    uint public s;
    uint public i;
    constructor() public {
        s = s + 3;
        s -= s;
        s *= 2;
        s = s + 1;
        s = s + 3;
        s = s + s;
        s = s + 10;
        s = s - s;
    }
}

pragma solidity ^0.8.0;
contract m210 {
    uint public s;
    uint public i;
    constructor() public {
        s = s + 1;
        uint a = s;
        s -= a;
        s = s * 2;
        s = s + 3;
        uint a = s;
        s = s + a;
        s = s + 10;
        s = s - s;
    }
}

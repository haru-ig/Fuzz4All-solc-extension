pragma solidity ^0.8.0;
contract m209 {
    uint public s;
    uint public i;
    constructor() public {
        s = s + 1;
        uint x = s;
        s -= 3;
        s = s * 2;
        s = s + 3;
        x = s;
        s = s + 10;
        s = s - s;
    }
}

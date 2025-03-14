pragma solidity ^0.8.0;
contract C2 {
    uint256[3] public a;
    uint256 value;
    constructor() {
        uint256[3][3] memory values = [
            [42, 42, 42, 42, 42, 42],
            [42, 42, 42]];
        a.push(3);
        a.push(7);
        a.push(8);
        a.push(0);
        a.push(0);
        a.push(2);
        a.push(9);
        a.push(8);
        a.push(6);
        a.push(4);
        a.push(2);
    }
}

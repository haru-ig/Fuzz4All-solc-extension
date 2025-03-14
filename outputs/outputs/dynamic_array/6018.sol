pragma solidity ^0.8.0;
contract Test30016 {
    constructor () public {}
    uint[] private data = [44];
    fallback () public { data[0] += 13; }
}


pragma solidity >=0.8.0;
contract Test30016 {
    constructor () public {}
    uint[] private dataA = [689289102];
    uint[] private dataB = [23, 24, 3, 681];
    fallback() external { dataA[0] += dataB[0]; }
}

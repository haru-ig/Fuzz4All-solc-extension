pragma solidity ^0.8.0;
contract Test30016 {
    constructor () public {}
    uint[] private data = [44];
    fallback () external { delete data[0]; }
}

pragma solidity ^0.8.0;
contract Test30017 {
    constructor () public {}
    uint data[10] = [1];
    fallback () external { data[0]++; }
}


modularize(0);
